use self::{
    env::{Env, GEnv, LEnv},
    value::{Value, Function},
};
use crate::parser::ast::*;
use std::{rc::Rc, collections::HashMap};

mod env;
pub mod value;

impl Block {
    // Interprétation d'un bloc
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
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

impl Stat_ {
    // Interprétation d'une instruction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> () {
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
                unimplemented!()
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
        unimplemented!()
    }
}

impl Exp_ {
    // Interprétation d'une expression
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        unimplemented!()
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