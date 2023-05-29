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
            Self::False => unimplemented!(),
            Self::True => unimplemented!(),
            Self::Number(n) => unimplemented!(),
            Self::LiteralString(str) => unimplemented!(),
            Self::Var(var) => unimplemented!(),
            Self::ExpFunctionCall(fc) => unimplemented!(),
            Self::FunctionDef(fb) => unimplemented!(),
            Self::BinOp(bop, e, e_) => unimplemented!(),
            Self::Unop(uop, e) => unimplemented!(),
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
