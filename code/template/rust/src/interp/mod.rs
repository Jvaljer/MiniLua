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
        for stat in &self.statements {
            stat.interp(env);
        }
        self.ret.interp(env)
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
            Self::LiteralString(str) => unimplemented!(),
            Self::Var(var) => unimplemented!(),
            Self::ExpFunctionCall(fc) => unimplemented!(),
            Self::FunctionDef(fb) => unimplemented!(),
            Self::BinOp(bop, e, e_) => {
                let v = e.interp(env);
                let v_ = e_.interp(env);
                match bop {
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
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(v.lt(v_)),
                        _ => panic!("cannot interpret '{} < {}' because not both numeric values", v,v_),
                    },
                    BinOp::LessEq => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(v.le(v_)),
                        _ => panic!("cannot interpret '{} <= {}' because not both numeric values", v,v_),
                    },
                    BinOp::Greater => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(!(v.le(v_))),
                        _ => panic!("cannot interpret '{} > {}' because not both numeric values", v,v_),
                    },
                    BinOp::GreaterEq => match (v,v_){
                        (Value::Number(n), Value::Number(n_)) => Value::Bool(!(v.lt(v_))),
                        _ => panic!("cannot interpret '{} >= {}' because not both numeric values", v,v_),
                    },
                    BinOp::LogicalAnd => match (v,v_){
                        (Value::Bool(b), Value::Bool(b_)) => Value::Bool(b && b_),
                        _ => panic!("cannot interpret '{} && {}' because not both boolean values", v,v_),
                    },
                    BinOp::LogicalOr => match (v,v_){
                        (Value::Bool(b), Value::Bool(b_)) => Value::Bool(b || b_),
                        _ => panic!("cannot interpret '{} || {}' because not both boolean values", v,v_),
                    },
                }
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
