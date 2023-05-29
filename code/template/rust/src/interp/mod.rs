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
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
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
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        match self {
            Self::Nil => Value::Nil,
            Self::False => Value::Bool(false),
            Self::True => Value::Bool(true),
            Self::Number(n) => Value::Number(n),
            Self::LiteralString(str) => Value::String(str),
            Self::Var(var) => { match var {
                                    Var::Name(name) => env.lookup(name),
                                    Var::IndexTable(tab, k) => { let table = tab.interp(env).as_table();
                                                                 let key = k.interp(env).as_table_key();
                                                                 let val = table.borrow().get(&key);
                                                                 match val {
                                                                    Some(x) => x,
                                                                    None => Value::Nil,
                                                                 }
                                                               }
                                }
                              },
            Self::ExpFunctionCall(fc) => unimplemented!(),
            Self::FunctionDef(fb) => unimplemented!(),
            Self::BinOp(bop, e, e_) => match bop {
                                           Binop::Addition => { unimplemented!() }
                                           Binop::Subtraction => { unimplemented!() }
                                           Binop::Multiplication => { unimplemented!() }
                                           Binop::Equality => { unimplemented!() }
                                           Binop::Inequality => { unimplemented!() }
                                           Binop::Less => { unimplemented!() }
                                           Binop::LessEq => { unimplemented!() }
                                           Binop::Greater => { unimplemented!() }
                                           Binop::GreaterEq => { unimplemented!() }
                                           Binop::LogicalAnd => { unimplemented!() }
                                           Binop::LogicalOr => { unimplemented!() }
                                       },
            Self::Unop(uop, e) => match uop {
                                      Unop::UnaryMinus => { unimplemented!() }
                                      Unop::Not => { unimplemented!() }
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
