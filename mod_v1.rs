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
        //might need to create a new env here ?
        self.body.interp(env);
        self.ret.interp(env)
    }
}

impl Stat_ {
    // Interprétation d'une instruction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> () {
        match self {
            Self::Nop => (),
            Self::Seq(e,e_) => {
                e.interp(env);
                e_.interp(env);
            },
            Self::StatFunctionCall(fc) => { fc.interp(env); },
            Self::Assign(var, e) => {
                let v = e.interp(env);
                if let Some(c) = env.locals.lookup(var) {
                    c.replace(v);
                    return;
                } else if let Some(c) = env.globals.0.get_mut(var) {
                    c.replace(v);
                    return;
                }
                panic!("Var {} couldn't be found...", var);
            },
            Self::WhileDoEnd(cond, e) => { 
                while cond.interp(env) != Value::Bool(false) {
                    e.interp(env);
                }
            },
            Self::If(cond, e, e_) => {
                if cond.interp(env) == Value::Bool(true) {
                    e.interp(env);
                } else {
                    e_.interp(env);
                }
            },
        }
    }
}

impl FunctionCall {
    // Interprétation d'un appel de fonction
    fn interp<'ast, 'genv>(&'ast self, env: &mut Env<'ast, 'genv>) -> Value<'ast> {
        match self.name.interp(env) {
            Value::Function(f) => f.interp(env),
            _ => Value::Nil,
        }
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
                    },
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
                let mut table = HashMap::new();
                for(k, v) in tab {
                    let key = k.interp(env);
                    let val = v.interp(env);
                    table.insert(key, val);
                }
                Value::Table(table)
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

