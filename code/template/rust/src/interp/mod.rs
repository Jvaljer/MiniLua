use self::{
    env::{Env, GEnv, LEnv},
    value::{Function, Value},
};
use crate::parser::ast::*;
use std::{cell::RefCell, collections::HashMap, rc::Rc, borrow::BorrowMut};

mod env;
pub mod value;

impl Block {
    // Interprétation d'un bloc
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        let v = vec![Value::Nil; self.locals.len()];
        let mut env_m = Env {
            locals: env.locals.extend(&self.locals, v.into_iter()),
            globals: &mut env.globals,
        };
        self.body.interp(&mut env_m);
        self.ret.interp(&mut env_m)
    }
}

impl Stat_ {
    // Interprétation d'une instruction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> () {
        match self {
            Self::Nop => (),
            Self::Seq(e, e_) => {
                e.interp(env);
                e_.interp(env)
            }
            Self::StatFunctionCall(fcall) => {
                fcall.interp(env);
            }
            Self::Assign(var, e) => {
                //v.assing(e, env);
                match var {
                    Var::Name(name) => {
                        let val = e.interp(env);
                        env.set(name, val)
                    } 
                    Var::IndexTable(tab, k) => {
                        let table = tab.interp(env).as_table();
                        let key = k.interp(env).as_table_key();
                        let val = e.interp(env);
                        let table_ = &*table;
                        table_.borrow_mut().insert(key, val);
                    }
                };
            }
            Self::WhileDoEnd(cond, e) => {
                while cond.interp(env).as_bool() {
                    e.interp(env);
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
                self.interp_print(env)
            },
            Function::Closure(names, lenv, blk) => {
                //wanted to make a function 'interp_clos' but couldn't solve how to pass the 'lenv' arg...
                let args = self.1.iter().map(|e| e.interp(env));
                let mut env_m = Env {
                    locals: lenv.extend(names, args.into_iter()),
                    globals: &mut env.globals,
                };
                blk.interp(&mut env_m)
            }
        }
    }

    fn interp_print<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast>{
        let len = self.1.len();
        for i in 0..len-1 {
            print!("{}\t", self.1[i].interp(env));
        }
        println!("{}", self.1[len-1].interp(env));
        Value::Nil
    }
}

impl Exp_ {
    // Interprétation d'une expression
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        match self {
            Self::Nil => {
                Value::Nil
            },
            Self::False => {
                Value::Bool(false)
            },
            Self::True => {
                Value::Bool(true)
            },
            Self::Number(n) => {
                Value::Number(*n)
            },
            Self::LiteralString(s) => {
                Value::String(s.clone())
            },
            Self::Var(var) => {
                //v.interp_var(env)
                match var{ 
                    Var::Name(name) => {
                        env.lookup(name)
                    },
                    Var::IndexTable(tab, k) => {
                        let table = tab.interp(env).as_table();
                        let key = k.interp(env).as_table_key();
                        return match table.borrow().get(&key) {
                            Some(val) => val.clone(),
                            None => Value::Nil,
                        };
                    }
                }
            },
            Self::ExpFunctionCall(fcal) => {
                fcal.interp(env)
            },
            Self::FunctionDef(fb) => {
                let env_ = env.locals.clone();
                let f_val = Function::Closure(&fb.0, env_, &fb.1);
                Value::Function(f_val)
            },
            Self::BinOp(bop, e, e_) => {
                match bop {
                    // logical operators
                    BinOp::LogicalAnd => {
                        let v_and = e.interp(env);
                        return match v_and {
                            Value::Bool(false) => v_and,
                            Value::Nil => v_and,
                            _ => e_.interp(env),
                        };
                    }
                    BinOp::LogicalOr => {
                        let v_or = e.interp(env);
                        return match v_or {
                            Value::Bool(false) => e_.interp(env),
                            Value::Nil => e_.interp(env),
                            _ => v_or,
                        };
                    }
                    _ => {
                        let v = e.interp(env);
                        let v_ = e_.interp(env);
                        match bop {
                        // arithmetic operators
                            BinOp::Addition => {
                                Value::add(v,v_)
                            },
                            BinOp::Subtraction => {
                                Value::sub(v,v_)
                            },
                            BinOp::Multiplication => {
                                Value::mul(v,v_)
                            },
                            // relational operators
                            BinOp::Equality => {
                                Value::Bool(v == v_)
                            },
                            BinOp::Inequality => {
                                Value::Bool(v != v_)
                            },
                            BinOp::Less => {
                                Value::Bool(v.lt(v_))
                            },
                            BinOp::LessEq => {
                                Value::Bool(v.le(v_))
                            },
                            BinOp::Greater => {
                                Value::Bool(!v.le(v_))
                            },
                            BinOp::GreaterEq => {
                                Value::Bool(!v.lt(v_))
                            },
                            _ => panic!("couldn't find the logical operand..."),
                        }
                    },
                }
            },
            Self::UnOp(uop, e) => {
                let v = e.interp(env);
                match uop {
                    UnOp::UnaryMinus => v.neg(),
                    UnOp::Not => Value::Bool(!v.as_bool()),
                }
            },
            Self::Table(tab) => {
                let mut table = HashMap::new();
                for (k, val) in tab {
                    let key = k.interp(env).as_table_key();
                    let value = val.interp(env);
                    table.insert(key, value);
                }
                Value::Table(Rc::new(RefCell::new(table)))
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