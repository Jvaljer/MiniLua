open Luaparser.Ast
type value = Value.t
type env = Value.env

(* Fonction auxiliaire pour créer une table d'environnement à partir de noms et
   valeurs associées. *)
let create_scope (names: string list) (values: value list) : (name, value) Hashtbl.t =
  let scope = Hashtbl.create (List.length names) in
  List.iter2 (fun name v -> Hashtbl.add scope name v) names values;
  scope

(* Fonctions de l'interprète, mutuellement récursives. Une fonction par
   catégorie syntaxique de l'AST. *)

(* Interprète un bloc de code *)
let rec interp_block (env : env) (blk : block) : value =
  let loc_scp = create_scope blk.locals (List.map (fun _ -> Value.Nil) blk.locals) in
  let env' = { env with locals = loc_scp::env.locals } in
  let rec eval_stat = function 
    (* must complete this part *)
    | Nop                     -> ()
    | Seq (s,s')              -> eval_stat s; 
                                 eval_stat s'
    | Assign (var,e)            -> let v = interp_exp env' e in 
                                   ( match var with
                                      | Name name         -> Value.set_ident env' name v 
                                      | IndexTable (t, i) -> let t_val = interp_exp env' t in
                                                             let i_val = interp_exp env' i in
                                                             let table = Value.as_table t_val in
                                                             let i_key = Value.as_table_key i_val in
                                                             Hashtbl.replace table i_key v
                                      | _ -> failwith "(interp_block)::(eval_stat)::(Assign)-> var not matched"
                                   )
    | FunctionCall fc         -> assert false 
    | WhileDoEnd (cond, body) -> assert false
    | If (cond, e, e')        -> assert false
    | _ -> failwith "(interp_block)::(eval_stat)-> blk.body not matched" 
  in
  eval_stat blk.body;
  interp_exp env' blk.ret

(* Interprète un statement *)
and interp_stat (env : env) (stat : stat) : unit =
  match stat with
    | Nop                      -> ()
    | Seq (s, s')              -> interp_stat env s; 
                                  interp_stat env s'
    | Assign (var, e)          -> let v = interp_exp env e in
                                  ( match var with 
                                      | Name name         -> Value.set_ident env name v
                                      | IndexTable (t, i) -> let t_val = interp_exp env t in
                                                             let i_val = interp_exp env i in
                                                             let table = Value.as_table i_val in
                                                             let i_key = Value.as_table_key i_val in
                                                             Hashtbl.replace table i_key v
                                      | _ -> failwith "(interp_stat)::(Assign)-> var not matched"
                                  )
    | FunctionCall fc          -> assert false
    | WhileDoEnd (cond, body)  -> assert false
    | If (cond, e, e')         -> assert false
    | _ -> failwith "(interp_stat)-> stat not matched"

(* Interprète un appel de fonction *)
and interp_funcall (env : env) (fc : functioncall) : value =
  match fc with 
    | (fun_e, args) -> assert false
    | _ -> failwith "(interp_funcall)-> fc not matched"

(* Interprète une expression *)
and interp_exp (env : env) (e : exp) : value =
  match e with 
    | Nil                -> assert false
    | False              -> assert false
    | True               -> assert false
    | Integer n          -> assert false
    | Float n            -> assert false
    | LiteralString str  -> assert false
    | Var v              -> assert false
    | FunctionCallE fc   -> assert false
    | FunctionDef fb     -> assert false
    | BinOp (bop, e, e') -> assert false
    | UnOp (uop, e)      -> assert false
    | Table elts         -> assert false
    | _ -> failwith "(interp_exp)-> e not matched"

let run ast =
  let globals = Hashtbl.create 47 in
  Hashtbl.add globals "print" (Value.Function Print);
  let env = Value.{ globals; locals = [] } in
  ignore (interp_block env ast)
