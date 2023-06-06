use self::{
    env::{Env, GEnv, LEnv},
    value::{Value, Function},
};
use crate::parser::ast::*;
use std::{rc::Rc, collections::HashMap};
use std::cell::RefCell;

mod env;
pub mod value;

impl Block {
    // Interprétation d'un bloc
    fn interp<'ast, 'genv>(&'ast self, env: &'ast mut Env<'ast, 'genv>) -> Value<'ast> {
        let v = vec![Value::Nil; self.locals.len()];
        let env_ = Rc::new(Env {
            locals: env.locals.clone().extend(&self.locals, v.into_iter()),
            globals: env.globals,
        });

        let mut tmp = env_.clone();
        let mut env_m = Rc::get_mut(&mut tmp).unwrap();

        self.body.interp(&mut env_m);
        self.ret.interp(&mut env_m)
    }
}

use std::borrow::BorrowMut;
impl Stat_ {
    // Interprétation d'une instruction
    fn interp<'ast, 'genv>(&'ast self, env: &'ast mut Env<'ast, 'genv>) -> () where 'genv : 'ast {
        match self {
            Self::Nop => (),
            Self::Seq(e, e_) => {
                e.interp(env);
                e_.interp(env)
            }
            Self::StatFunctionCall(fc) => {
                fc.interp(env);
            }
            Self::Assign(var, exp) => {
                var.ass_var(env, exp);
            }
            Self::WhileDoEnd(cond, exp) => {
                while cond.interp(env).as_bool() {
                    exp.interp(env);
                }
            }
            Self::If(cond, e, e_) => {
                if cond.interp(env).as_bool() {
                    e.interp(env)
                } else {
                    e_.interp(env)
                }
            }
        }
    }
}

impl FunctionCall {
    // Interprétation d'un appel de fonction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        let f = self.0.interp(env).as_function();
        match f {
            Function::Print => self.interp_print(env),
            Function::Closure(names, lenv, b) => self.interp_clos(names, lenv, b, env),
        }
    }

    fn interp_print<'ast, 'genv>(&'ast self, env:&mut Env<'ast, 'genv>) -> Value<'ast> {
        let l = self.1.len();
        for i in 0..l {
            print!("{}\t", self.1[i].interp(env));
        }
        Value::Nil
    }

    fn interp_clos<'ast, 'genv>(&'ast self, names: &[Name], lenv: &[Value<'ast>], b: &Block, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        let args = self.1.iter().map(|e| e.interp(env));
        let mut env_m = Env { locals: lenv.extend(names, args.into_iter()), globals: &mut env.globals };
        b.interp(&mut env_m)
    }
}

impl Exp_ {
    // Interprétation d'une expression
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        match self {
            Self::Nil => Value::Nil,
            Self::False => Value::Bool(false),
            Self::True => Value::Bool(true),
            Self::Number(n) => Value::Number(*n),
            Self::LiteralString(str) => Value::String(str.clone()),
            Self::Var(var) => {
                /* //for some reason I can't make this work, so I'm gonna do something else
                if let Some(v) = env.locals.lookup(&var) {
                    return v.borrow().clone();
                }
                env.globals.lookup(&var)
                */ 
                var.interp_var(env)
            },
            Self::ExpFunctionCall(fc) => fc.interp(env),
            Self::FunctionDef(fb) => {
                let f = Function::Closure(&fb.0, Rc::clone(&env.locals), &fb.1);
                Value::Function(f)
            },
            Self::BinOp(bop, e, e_) => {
                let v = e.interp(env);
                let v_ = e_.interp(env);
                match bop {
                    BinOp::Addition => Value::add(v.as_number(), v_.as_number()),
                    BinOp::Subtraction => Value::sub(v.as_number(), v_.as_number()),
                    BinOp::Multiplication => Value::mul(v.as_number(), v_.as_number()),
                    BinOp::Equality => Value::Bool(v == v_),
                    BinOp::Inequality => Value::Bool(v != v_),
                    BinOp::Less => Value::Bool(v.lt(v_)),
                    BinOp::LessEq => Value::Bool(v.le(v_)),
                    BinOp::Greater => Value::Bool(!v.le(v_)),
                    BinOp::GreaterEq => Value::Bool(!v.lt(v_)),
                    BinOp::LogicalAnd => Value::Bool(v.as_bool() && v_.as_bool()),
                    BinOp::LogicalOr => Value::Bool(v.as_bool() || v_.as_bool()),
                }
            },
            Self::UnOp(uop, e) => match uop {
                                      UnOp::UnaryMinus => {
                                        match e.interp(env) {
                                            Value::Number(n) => Value::Number(-n),
                                            _ => panic!("UnaryMinus excpects a numeric value"),
                                        }
                                      }
                                      UnOp::Not => {
                                        match e.interp(env) {
                                            Value::Bool(b) => Value::Bool(!b),
                                            _ => panic!("Not excpects a numeric value"),
                                        }
                                      }
                                  },
            Self::Table(tab) => {
                let mut t = HashMap::new();
                for (k, val) in tab {
                    let key = k.interp(env).as_table_key();
                    let value = val.interp(env);
                    t.insert(key, value);
                }
                Value::Table(Rc::new(RefCell::new(t)))
            }
        }
    }
}

//adding something to handle variables
impl Var {
    fn ass_var<'ast, 'genv>(&'ast self, env: &'ast mut Env<'ast, 'genv>, e:&'ast Exp_) where 'genv : 'ast {
        match self {
            Var::Name(s) => {
                let v = e.interp(env);
                env.set(s,v);
            }
            Var::IndexTable(tab, k) => {
                let table = tab.interp(env).as_table();
                let key = k.interp(env).as_table_key();
                let val = e.interp(&mut *env);

                if let Some(mut c) = table.borrow().get(&key) {
                    *c.borrow_mut() = &val;
                };
             }
        };
    }

    fn interp_var<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        /* //not workign here either... 
        if let Some(v) = env.locals.lookup(&var) {
            return v.borrow().clone();
        }
        env.globals.lookup(&var) */

        //trying another possibility
        match self {
            Var::Name(str) => env.lookup(&str), 
            Var::IndexTable(table, key) => {
                match table.interp(env).as_table().borrow().get(&key.interp(env).as_table_key()) {
                    Some(var) => var.clone(),
                    None => Value::Nil
                }
            }
        }
    }
}
// Point d'entrée principal de l'interpréteur
pub fn run(ast: &Block) {
    let mut globals = GEnv(HashMap::new());
    let printid = "print".to_owned();
    globals.0.insert(&printid, Value::Function(Function::Print));
    let mut env = Env {
        locals: Rc::new(LEnv::Nil),
        globals: &mut globals,
    };
    ast.interp(&mut env);
}