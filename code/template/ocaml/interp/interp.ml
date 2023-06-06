open Luaparser.Ast
type value = Value.t
type env = Value.env

(* Fonction auxiliaire pour créer une table d'environnement à partir de noms et
   valeurs associées. *)
let create_scope (names: string list) (values: value list) : (name, value) Hashtbl.t =
  let scope = Hashtbl.create 10 in
  let rec loop names values =
    match names, values with
      | [], _ -> ()
      | name::names, value::values ->
        Hashtbl.replace scope name value;
        loop names values
      | n::names, [] ->
        Hashtbl.replace scope n Value.Nil;
        loop names []
    in
    loop names values;
    scope

(* Fonctions de l'interprète, mutuellement récursives. Une fonction par
   catégorie syntaxique de l'AST. *)

(* Interprète un bloc de code *)
let rec interp_block (env : env) (blk : block) : value =
  (match env.locals with
    | [] -> ()
    | local :: _ -> List.iter (fun name -> Hashtbl.replace local name Value.Nil) blk.locals
  );
  interp_stat env blk.body;
  interp_exp env blk.ret

(* Interprète un statement *)
and interp_stat (env : env) (stat : stat) : unit =
  match stat with
    | Nop -> ()
    | Seq (s, s') -> 
      interp_stat env s; 
      interp_stat env s'
    | Assign (var, e) -> 
      (*cannot interpret the value this early unfortunately*)
      (*let value = interp_exp env e in*)
      ( match var with
          | Name name ->
            let value = interp_exp env e in
            Value.set_ident env name value
          | IndexTable(t, k) ->
            let tab = interp_exp env t in
            let table = Value.as_table tab in
            let k' = interp_exp env k in
            let key = Value.as_table_key k' in 
            (*cannot interpret the value before this moment*)
            let value = interp_exp env e in
            Hashtbl.replace table key value
      )
    | FunctionCall fc -> ignore (interp_funcall env fc)
    | WhileDoEnd (cond, body) ->
      let c = interp_exp env cond in
      if Value.as_bool c then 
        ( 
          interp_stat env body;
          interp_stat env stat 
        )
    | If (cond, s, s') -> 
      let c = interp_exp env cond in
      if Value.as_bool c then 
        interp_stat env s
      else 
        interp_stat env s'

(* Interprète un appel de fonction *)
and interp_funcall (env : env) (fc : functioncall) : value =
  match fc with 
    | (f_e, a) ->
      let f_v = interp_exp env f_e in
      let args = List.map (interp_exp env) a in
      ( match (Value.as_function f_v) with
          | Value.Print -> 
            (* commented is working as values printed are the good ones, but compiler didn't like it enough to say [OK]...
               so I tried something else which was accepted *)
            (*List.iter (fun a_v -> print_string (Value.to_string a_v ^ "\t")) args;
            print_newline (); *)
            let a_s = List.map (fun a' -> Value.to_string a') args in
            print_endline (String.concat "\t" a_s);
            Value.Nil
          | Value.Closure (names,clos_env,body) ->
            interp_block { clos_env with locals = (create_scope names args)::clos_env.locals } body
      )

(* interprète table *)
and interp_table (env : env) (l : (exp * exp) list ) : value=
  let table = Hashtbl.create 10 in
  List.iter (fun (key, v) -> 
    let key = Value.as_table_key (interp_exp env key) in
    let value = interp_exp env v in
    Hashtbl.replace table key value) l;
  Value.Table table

(* Interprète une expression *)
and interp_exp (env : env) (e : exp) : value =
 match e with
  | Nil -> Value.Nil
  | False -> Value.Bool false
  | True -> Value.Bool true
  | Integer n -> Value.Int n
  | Float f -> Value.Float f
  | LiteralString s -> Value.String s
  | Var var -> ( 
    match var with
      | Name n -> Value.lookup_ident env n
      | IndexTable (t, k) -> 
        let tab = interp_exp env t in 
        let table = Value.as_table tab in
        let k' = interp_exp env k in
        let key = Value.as_table_key k' in
        ( match Hashtbl.find_opt table key with
            | Some v -> v
            | None -> Value.Nil
        )
    )
  | FunctionCallE fc -> interp_funcall env fc
  | FunctionDef (name, blk) -> 
    let clos = Value.Closure (name, env, blk) in
    Value.Function clos
  | BinOp (bop, e, e') -> (
    match bop with 
      | LogicalAnd -> 
        let v = interp_exp env e in 
        if Value.as_bool v then 
          let v' = interp_exp env e' in
          v'
        else
          v
      | LogicalOr -> 
        let v = interp_exp env e in 
        if Value.as_bool v then 
          v
        else
          let v' = interp_exp env e' in
          v'
      | _ -> 
        let v = interp_exp env e in
        let v' = interp_exp env e' in
        ( match bop with 
            | Addition -> Value.add v v'
            | Subtraction -> Value.sub v v'
            | Multiplication -> Value.mul v v'
            | Equality -> Value.Bool (Value.equal v v')
            | Inequality -> Value.Bool (not(Value.equal v v'))
            | Less -> Value.Bool (Value.lt v v')
            | LessEq -> Value.Bool (Value.le v v')
            | Greater -> Value.Bool (not(Value.le v v'))
            | GreaterEq -> Value.Bool (not(Value.lt v v'))
            | _ -> failwith "binary operand not referenced in Lua"
        )
  )
  | UnOp (uop, e) -> 
    let v = interp_exp env e in
    ( match uop with 
        | UnaryMinus -> Value.neg v
        | Not -> Value.Bool (not(Value.as_bool v))
    )
  | Table elts -> 
    let table = Hashtbl.create 16 in
    List.iter (fun (k,v) -> 
      let k' = interp_exp env k in 
      let key = Value.as_table_key k' in
      let value = interp_exp env v in
      Hashtbl.replace table key value
    ) elts;
    Value.Table table

let run ast =
  let globals = Hashtbl.create 47 in
  Hashtbl.add globals "print" (Value.Function Print);
  let env = Value.{ globals; locals = [] } in
  ignore (interp_block env ast)
