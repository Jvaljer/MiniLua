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
    | Assign (var,e)          -> let v = interp_exp env' e in 
                               ( match var with
                                   | Name name         -> Value.set_ident env' name v 
                                   | IndexTable (t, i) -> let t_val = interp_exp env' t in
                                                          let i_val = interp_exp env' i in
                                                          let table = Value.as_table t_val in
                                                          let i_key = Value.as_table_key i_val in
                                                          Hashtbl.replace table i_key v
                               )
    | FunctionCall fc         -> ignore (interp_funcall env' fc)
    | WhileDoEnd (e, body)    -> let cond = Value.as_bool (interp_exp env' e) in
                                    while cond do 
                                      interp_stat env' body 
                                    done
    | If (cond, b, b')        -> if Value.as_bool (interp_exp env cond) then
                                   interp_stat env b 
                                 else
                                   interp_stat env b'
  in
  eval_stat blk.body;
  interp_exp env' blk.ret

(* Interprète un statement *)
and interp_stat (env : env) (stat : stat) : unit =
  match stat with
    | Nop                  -> ()
    | Seq (s, s')          -> interp_stat env s; 
                              interp_stat env s'
    | Assign (var, e)      -> let v = interp_exp env e in
                              ( match var with 
                                  | Name name         -> Value.set_ident env name v
                                  | IndexTable (t, i) -> let t_val = interp_exp env t in
                                                         let i_val = interp_exp env i in
                                                         let table = Value.as_table i_val in
                                                         let i_key = Value.as_table_key i_val in
                                                         Hashtbl.replace table i_key v
                              )
    | FunctionCall fc      -> ignore (interp_funcall env fc)
    | WhileDoEnd (e, body) -> let cond = Value.as_bool (interp_exp env e) in
                              while cond do
                                interp_stat env body
                              done
    | If (cond, b, b')        -> if Value.as_bool (interp_exp env cond) then
                                   interp_stat env b 
                                 else
                                   interp_stat env b'

(* Interprète un appel de fonction *)
and interp_funcall (env : env) (fc : functioncall) : value =
  match fc with 
    | (f_exp, args) ->
      let f_val = interp_exp env f_exp in
      let a_vals = List.map (interp_exp env) args in
      ( match f_val with 
          | Value.Function f -> ( match f with 
                                    | Value.Print -> 
                                      List.iter (fun arg_val -> print_string (Value.to_string arg_val ^ "\t")) a_vals;
                                      print_newline ();
                                      Value.Nil
                                    | Value.Closure (names, clos_env, body) -> 
                                      let scope' = create_scope names a_vals in
                                      let env' = { clos_env with locals = scope'::clos_env.locals } in
                                      interp_block env' body
                                )
          | _ -> failwith "(interp_funcall)-> fc isn't a function value"
      )

(* Interprète une expression *)
and interp_exp (env : env) (e : exp) : value =
  match e with 
    | Nil                -> Value.Nil
    | False              -> Value.Bool false
    | True               -> Value.Bool true
    | Integer n          -> Value.Int n
    | Float f            -> Value.Float f
    | LiteralString str  -> Value.String str
    | Var v              -> ( match v with
                                | Name name -> Value.lookup_ident env name
                                | _ -> failwith "(interp_exp)::(Var)-> var isn't 'Name'"
                            )
    | FunctionCallE fc   -> interp_funcall env fc
    | FunctionDef fb     -> assert false
    | BinOp (bop, e, e') -> let v = interp_exp env e in
                            let v' = interp_exp env e' in
                            ( match bop with 
                              | Addition       -> Value.add v v'
                              | Subtraction    -> Value.sub v v'
                              | Multiplication -> Value.mul v v'
                              | Equality       -> Value.Bool (Value.equal v v')
                              | Inequality     -> Value.Bool (not (Value.equal v v'))
                              | Less           -> Value.Bool (Value.lt v v')
                              | LessEq         -> Value.Bool (Value.le v v')
                              | Greater        -> Value.Bool (not (Value.le v v'))
                              | GreaterEq      -> Value.Bool (not (Value.lt v v'))
                              | LogicalAnd     -> ( match (v,v') with 
                                                      | Value.Bool false, _              -> v
                                                      | _, Value.Bool false              -> v'
                                                      | Value.Bool true, Value.Bool true -> v
                                                      | _,_ -> failwith "(interp_exp)::(BinOp)::(LogicalAnd)-> {v,v'} not matched"
                                                  )
                              | LogicalOr      -> ( match (v,v') with 
                                                      | Value.Bool false, Value.Bool false -> v
                                                      | Value.Bool _, Value.Bool _         -> Value.Bool true
                                                      | _,_ -> failwith "(interp_exp)::(BinOp)::(LogicalOr)-> {v,v'} not matched"
                                                  )
                            )
    | UnOp (uop, e)      -> let v = interp_exp env e in
                            ( match uop with 
                                | UnaryMinus -> (* Value.mul (Value.Int Int64.minus_one) v *) Value.neg v  
                                | Not        -> Value.Bool (not (Value.as_bool v))
                            )
    | Table elts         -> assert false

let run ast =
  let globals = Hashtbl.create 47 in
  Hashtbl.add globals "print" (Value.Function Print);
  let env = Value.{ globals; locals = [] } in
  ignore (interp_block env ast)
