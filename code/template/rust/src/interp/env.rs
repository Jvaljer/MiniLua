use crate::{interp::value::Value, parser::ast::Name};
use std::{cell::RefCell, collections::HashMap, rc::Rc};

// Tout comme en OCaml, les environnements de l'interprète mini-lua en Rust se
// composent d'un environnement local et d'un environnement global.
//
// Le type Env dépend de deux lifetimes : 'ast est la durée de vie à laquelle
// les identifiants de l'AST sont empruntés (voir value.rs), tandis que 'genv
// est la durée de vie de l'emprunt de l'environnement global que cet
// environnement contient.
pub struct Env<'ast, 'genv> {
    // L'environnement local est une liste chaînée de tables de hachage, chacune
    // d'elles représentant une portée de variables locales différente.
    // Les environnements locaux peuvent être partagées par différentes
    // clôtures : on utilise des pointeurs Rc afin de permettre ce partage.
    pub locals: Rc<LEnv<'ast>>,

    // L'environnement global est référencé sous la forme d'un emprunt mutable
    // permettant d'accéder aux variables locales en lecture et en écriture.
    // Cet emprunt mutable a la durée de vie 'genv : lorsque l'on change
    // d'environnement local (i.e., lorsque l'on entre dans une nouvelle portée,
    // donc lors d'un appel de fonction), on réemprunte cet emprunt le temps de
    // cette nouvelle portée afin de créer le nouvel environnement.
    pub globals: &'genv mut GEnv<'ast>,
}

// Les portées sont représentées par des tables de hachage utilisant des
// emprunts d'identifiants de l'AST comme clefs et RefCell<Value<'ast> comme
// valeur. Le type RefCell<Value<'ast>> permet de modifier les variables dans un
// environnement local, même si celui-ci est partagé.
pub type Scope<'ast> = HashMap<&'ast Name, RefCell<Value<'ast>>>;

// Un environnement local est une liste chaînée de portées locales.
pub enum LEnv<'ast> {
    Nil,
    Cons(Scope<'ast>, Rc<LEnv<'ast>>),
}

// Un environnement global contient simplement une table de hachage pour les
// valeurs des variables globales. On n'utilise pas RefCell ici, car on a
// toujours accès de manière exclusive à l'environnement global, ce qui permet
// un accès en lecture et en écriture..
pub struct GEnv<'ast>(pub HashMap<&'ast Name, Value<'ast>>);

impl<'ast> LEnv<'ast> {
    // Recherche d'une variable dans un environnement local.
    // Cette fonction est privée, et sera uniquement utilisée dans le module
    // courant.
    //
    // ATTENTION ! Il faut non seulement compléter le corps de cette
    // fonction, mais aussi compléter les annotations de lifetimes : le choix
    // par défaut fait par le compilateur Rust ne permet pas d'implémenter
    // correctement l'interpréteur.
    fn lookup(&self, name: &Name) -> Option<&RefCell<Value<'ast>>> {
        match self {
            Self::Nil => None,
            Self::Cons(scope, lenv) => { 
                match scope.get(name) {
                    Some(v) => Some(v),
                    None => lenv.lookup(name),
                }
            }
        }
    }

    // Crée un nouvel environnement local, en ajoutant un ensemble de paires
    // noms-valeurs à un environnement local. Les clefs sont données par le
    // paramètre names, tandis que les valeurs sont données par le paramètre
    // values, un *itérateur* de valeurs.
    //
    // ATTENTION ! Il faut non seulement compléter le corps de cette
    // fonction, mais aussi compléter les annotations de lifetimes : le choix
    // par défaut fait par le compilateur Rust ne permet pas d'implémenter
    // correctement l'interpréteur.
    pub fn extend<V>(self: &Rc<Self>, names: &'ast [Name], values: V) -> Rc<LEnv<'ast>> where V: Iterator<Item = Value<'ast>> {
        let mut scope = Scope::new();
        let mut val_iter = values;
        for(_,name) in names.iter().enumerate(){
            if let Some(val) = val_iter.next() {
                scope.insert(name, val.into());
            } else {
                scope.insert(name, Value::Nil.into());
            }
        }
        Rc::new(LEnv::Cons(scope, self.clone()))
    }
}

impl<'ast, 'genv> Env<'ast, 'genv> {
    // Recherche d'une valeur dans un environnement. Il faut d'abord chercher
    // dans l'environnement local, puis dans l'environnement global.
    pub fn lookup(&self, name: &Name) -> Value<'ast> {
        if let Some(v) = self.locals.lookup(name) {
            v.borrow().to_owned()
        } else {
            match self.globals.0.get(name) {
                Some(v_) => v_.clone(),
                None => Value::Nil,
            }
        }
    }

    // Modification d'une variable dans un environnement. Si la variable est
    // présente dans un environnement local, alors il faut modifier la portée
    // correspondante. Sinon, il faut modifier l'environnement global, soit en
    // modifiant une entrée déjà existante, soit en en créant une nouvelle.
    pub fn set(&mut self, name: &'ast Name, v: Value<'ast>) {
        if let Some(c) = self.locals.lookup(name) {
            *c.borrow_mut() = v;
        } else {
            self.globals.0.insert(name, v);
        }
    }
}
