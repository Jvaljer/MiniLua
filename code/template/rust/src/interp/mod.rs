use self::{
    env::{Env, GEnv, LEnv},
    value::{Value, Function},
};
use crate::parser::ast::*;
use std::{rc::Rc, collections::HashMap, cell::RefCell, borrow::BorrowMut};

mod env;
pub mod value;

impl Block {
    // Interprétation d'un bloc
    fn interp<'ast, 'genv>(&'ast self, env: &'ast mut Env<'ast, 'genv>) -> Value<'ast> {
        let vec = vec![Value::Nil; self.locals.len()];
        let mut env_ = Env { locals: env.locals.extend(&self.locals, vec.into_iter()), globals: &mut env.globals, };
        self.body.interp(&mut env_);
        self.ret.interp(&mut env_)
    }
}

impl Stat_ {
    // Interprétation d'une instruction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> () {
        match self {
            Self::Nop => (),
            Self::Seq(e,e_) => { unimplemented!() }
            Self::StatFunctionCall(fc) => { unimplemented!() }
            Self::Assign(val, e) => { unimplemented!() }
            Self::WhileDoEnd(cond, e) => { unimplemented!() }
            Self::If(cond, e, e_) => { unimplemented!() }
        }
    }
}

impl FunctionCall {
    // Interprétation d'un appel de fonction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        unimplemented!()
    }
}

impl Exp_ {
    // Interprétation d'une expression
    fn interp<'ast, 'genv>(&'ast self, env: &'ast mut Env<'ast, 'genv>) -> Value<'ast> {
        match self {
            Self::Nil => Value::Nil,
            Self::False => Value::Bool(false),
            Self::True => Value::Bool(true),
            Self::Number(n) => Value::Number(*n),
            Self::LiteralString(str) => Value::String(str.clone()),
            Self::Var(var) => { match var {
                                    Var::Name(name) => env.lookup(name), //lifetime 'ast required + returning lifetime 'genv
                                    Var::IndexTable(tab, k) => { let table = tab.interp(env).as_table();
                                                                 let key = k.interp(env).as_table_key();
                                                                 let v = match table.borrow().get(&key) {
                                                                    Some(x) => x.clone(),
                                                                    None => Value::Nil,
                                                                 }; v
                                                               }
                                }
                              },
            Self::ExpFunctionCall(fc) => unimplemented!(),
            Self::FunctionDef(fb) => unimplemented!(),
            Self::BinOp(bop, e, e_) => match bop {
                                           BinOp::Addition => { let mut v = e.interp(env).as_number();
                                                                let mut v_ = e_.interp(env).as_number();
                                                                Value::Add(v,v_)
                                                              }
                                           BinOp::Subtraction => { let mut v = e.interp(env).as_number();
                                                                   let mut v_ = e_.interp(env).as_number();
                                                                   Value::Sub(v,v_)
                                                                 }
                                           BinOp::Multiplication => { let mut v = e.interp(env).as_number();
                                                                      let mut v_ = e_.interp(env).as_number();
                                                                      Value::Mul(v,v_)
                                                                    }
                                           BinOp::Equality => { let mut b = e.interp(env).as_bool();
                                                                let mut b_ = e_.interp(env).as_bool();
                                                                Value::PartialEq(b,b_)
                                                              }
                                           BinOp::Inequality => { let mut b = e.interp(env).as_bool();
                                                                  let mut b_ = e_.interp(env).as_bool();
                                                                  !Value::PartialEq(b,b_) //must check...
                                                                }
                                          //shall test all these logical stuff
                                           BinOp::Less => { let mut b = e.interp(env).as_bool();
                                                            let mut b_ = e_.interp(env).as_bool();
                                                            Value::PartialOrd(b,b_)
                                                          }
                                           BinOp::LessEq => { let mut b = e.interp(env).as_bool();
                                                              let mut b_ = e_.interp(env).as_bool();
                                                              Value::PartialOrd(b,b_) || Value::PartialEq(b,b_)
                                                            }
                                           BinOp::Greater => { let mut b = e.interp(env).as_bool();
                                                               let mut b_ = e_.interp(env).as_bool();
                                                               Value::PartialOrd(b,b_)
                                                             }
                                           BinOp::GreaterEq => { let mut b = e.interp(env).as_bool();
                                                                 let mut b_ = e_.interp(env).as_bool();
                                                                 Value::PartialOrd(b,b_) || Value::PartialEq(b,b_)
                                                               }
                                           BinOp::LogicalAnd => { unimplemented!() }
                                           BinOp::LogicalOr => { unimplemented!() }
                                       },
            Self::UnOp(uop, e) => match uop {
                                      UnOp::UnaryMinus => { unimplemented!() }
                                      UnOp::Not => { unimplemented!() }
                                  },
            Self::Table(tab) => unimplemented!(),
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
