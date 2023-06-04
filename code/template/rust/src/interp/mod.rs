use self::{
    env::{Env, GEnv, LEnv},
    value::{Value, Function},
};
use crate::parser::ast::*;
use std::{rc::Rc, collections::HashMap};

use core::cell::RefCell;
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
            Function::Print => {
                let len = self.1.len();
                for i in 0..len - 1 {
                    print!("{}\t", self.1[i].interp(env));
                }
                println!("{}", self.1[len - 1].interp(env));
                Value::Nil
            }
            Function::Closure(names, lenv, b) => {
                let args = self.1.iter().map(|e| e.interp(env));
                let mut new_env = Env {
                    locals: lenv.extend(names, args.into_iter()),
                    globals: &mut env.globals,
                };
                b.interp(&mut new_env)
            }
        }
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
                if let Some(v) = env.locals.lookup(&var) {
                    return v.borrow().clone();
                }
                env.globals.lookup(&var)
            },
            Self::ExpFunctionCall(fc) => fc.interp(env),
            Self::FunctionDef(fb) => {
                let f = Function::new(env, &fb.params, &fb.body);
                Value::Function(f) 
            },
            Self::BinOp(bop, e, e_) => {
                let v = e.interp(env);
                let v_ = e_.interp(env);
                match bop {
                    //telling me that I must implement PartialOrd for 'Value' but its already done...
                    /*
                    BinOp::Addition => match(v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Add(n,n_),
                        _ => panic!("cannot interpret '{} + {}' because not both numeric values", v,v_),
                    },
                    BinOp::Subtraction => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Sub(n,n_),
                        _ => panic!("cannot interpret '{} - {}' because not both numeric values", v,v_),
                    },
                    BinOp::Multiplication => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Mul(n,n_),
                        _ => panic!("cannot interpret '{} * {}' because not both numeric values", v,v_),
                    },
                    BinOp::Equality => Value::Bool(v == v_),
                    BinOp::Inequality => Value::Bool(v != v_),
                    //shall test all these logical stuff
                    BinOp::Less => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(v < v_),
                        _ => panic!("cannot interpret '{} < {}' because not both numeric values", v,v_),
                    },
                    BinOp::LessEq => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(v <= v_),
                        _ => panic!("cannot interpret '{} <= {}' because not both numeric values", v,v_),
                    },
                    BinOp::Greater => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(v > v_),
                        _ => panic!("cannot interpret '{} > {}' because not both numeric values", v,v_),
                    },
                    BinOp::GreaterEq => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(v >= v_),
                        _ => panic!("cannot interpret '{} >= {}' because not both numeric values", v,v_),
                    },
                    BinOp::LogicalAnd => match (v,v_){
                        (Value::Bool(b), Value::Bool(b_)) => Value::Bool(b && b_),
                        _ => panic!("cannot interpret '{} && {}' because not both boolean values", v,v_),
                    },
                    BinOp::LogicalOr => match (v,v_){
                        (Value::Bool(b), Value::Bool(b_)) => Value::Bool(b || b_),
                        _ => panic!("cannot interpret '{} || {}' because not both boolean values", v,v_),
                    }, */
                    //so doing something else
                    BinOp::Addition => Value::add(v, v_),
                    BinOp::Subtraction => Value::sub(v, v_),
                    BinOp::Multiplication => Value::mul(v, v_),
                    BinOp::Equality => Value::Bool(v == v_),
                    BinOp::Inequality => Value::Bool(v != v_),
                    BinOp::Less => Value::Bool(v.as_number() < v_.as_number()),
                    BinOp::LessEq => Value::Bool(v.as_number() <= v_.as_number()),
                    BinOp::Greater => Value::Bool(v.as_number() > v_.as_number()),
                    BinOp::GreaterEq => Value::Bool(v.as_number() >= v_.as_number()),
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