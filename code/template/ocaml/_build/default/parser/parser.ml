
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VERTICALBAR
    | UNTIL
    | TRUE
    | TRIPLEDOT
    | TILDAEQUAL
    | TILDA
    | THEN
    | SLASH
    | SHARP
    | SEMICOLON
    | RPAREN
    | RETURN
    | REPEAT
    | RBRACKET
    | RBRACE
    | PLUS
    | PERCENT
    | OR
    | NOT
    | NIL
    | NAME of (
# 67 "parser/parser.mly"
       (Internalast.name)
# 36 "parser/parser.ml"
  )
    | LTEQ
    | LT
    | LPAREN
    | LOCAL
    | LITERALSTRING of (
# 68 "parser/parser.mly"
       (string)
# 45 "parser/parser.ml"
  )
    | LBRACKET
    | LBRACE
    | INTEGER of (
# 65 "parser/parser.mly"
       (Int64.t)
# 52 "parser/parser.ml"
  )
    | IN
    | IF
    | HYPHEN
    | HAT
    | GTEQ
    | GT
    | GOTO
    | FUNCTION
    | FOR
    | FLOAT of (
# 66 "parser/parser.mly"
       (float)
# 66 "parser/parser.ml"
  )
    | FALSE
    | EQUAL
    | EOF
    | END
    | ELSEIF
    | ELSE
    | DOUBLESLASH
    | DOUBLELT
    | DOUBLEGT
    | DOUBLEEQUAL
    | DOUBLEDOT
    | DOUBLECOLON
    | DOT
    | DO
    | COMMA
    | COLON
    | BREAK
    | ASTERISK
    | AND
    | AMPERSAND
  
end

include MenhirBasics

# 1 "parser/parser.mly"
  
  open Internalast

# 97 "parser/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_chunk) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: chunk. *)

  | MenhirState001 : (('s, _menhir_box_chunk) _menhir_cell1_WHILE, _menhir_box_chunk) _menhir_state
    (** State 001.
        Stack shape : WHILE.
        Start symbol: chunk. *)

  | MenhirState004 : (('s, _menhir_box_chunk) _menhir_cell1_TILDA, _menhir_box_chunk) _menhir_state
    (** State 004.
        Stack shape : TILDA.
        Start symbol: chunk. *)

  | MenhirState007 : (('s, _menhir_box_chunk) _menhir_cell1_LPAREN, _menhir_box_chunk) _menhir_state
    (** State 007.
        Stack shape : LPAREN.
        Start symbol: chunk. *)

  | MenhirState008 : (('s, _menhir_box_chunk) _menhir_cell1_SHARP, _menhir_box_chunk) _menhir_state
    (** State 008.
        Stack shape : SHARP.
        Start symbol: chunk. *)

  | MenhirState010 : (('s, _menhir_box_chunk) _menhir_cell1_LBRACE, _menhir_box_chunk) _menhir_state
    (** State 010.
        Stack shape : LBRACE.
        Start symbol: chunk. *)

  | MenhirState012 : (('s, _menhir_box_chunk) _menhir_cell1_NOT, _menhir_box_chunk) _menhir_state
    (** State 012.
        Stack shape : NOT.
        Start symbol: chunk. *)

  | MenhirState014 : (('s, _menhir_box_chunk) _menhir_cell1_FUNCTION, _menhir_box_chunk) _menhir_state
    (** State 014.
        Stack shape : FUNCTION.
        Start symbol: chunk. *)

  | MenhirState015 : (('s, _menhir_box_chunk) _menhir_cell1_LPAREN, _menhir_box_chunk) _menhir_state
    (** State 015.
        Stack shape : LPAREN.
        Start symbol: chunk. *)

  | MenhirState018 : (('s, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_state
    (** State 018.
        Stack shape : NAME.
        Start symbol: chunk. *)

  | MenhirState022 : ((('s, _menhir_box_chunk) _menhir_cell1_LPAREN, _menhir_box_chunk) _menhir_cell1_option_parlist_, _menhir_box_chunk) _menhir_state
    (** State 022.
        Stack shape : LPAREN option(parlist).
        Start symbol: chunk. *)

  | MenhirState023 : (('s, _menhir_box_chunk) _menhir_cell1_SEMICOLON, _menhir_box_chunk) _menhir_state
    (** State 023.
        Stack shape : SEMICOLON.
        Start symbol: chunk. *)

  | MenhirState024 : (('s, _menhir_box_chunk) _menhir_cell1_RETURN, _menhir_box_chunk) _menhir_state
    (** State 024.
        Stack shape : RETURN.
        Start symbol: chunk. *)

  | MenhirState026 : (('s, _menhir_box_chunk) _menhir_cell1_HYPHEN, _menhir_box_chunk) _menhir_state
    (** State 026.
        Stack shape : HYPHEN.
        Start symbol: chunk. *)

  | MenhirState031 : (('s, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_state
    (** State 031.
        Stack shape : pexp.
        Start symbol: chunk. *)

  | MenhirState032 : (('s, _menhir_box_chunk) _menhir_cell1_LPAREN, _menhir_box_chunk) _menhir_state
    (** State 032.
        Stack shape : LPAREN.
        Start symbol: chunk. *)

  | MenhirState035 : (('s, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_state
    (** State 035.
        Stack shape : functioncall.
        Start symbol: chunk. *)

  | MenhirState037 : ((('s, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_state
    (** State 037.
        Stack shape : functioncall LBRACKET.
        Start symbol: chunk. *)

  | MenhirState039 : (('s, _menhir_box_chunk) _menhir_cell1_exp9, _menhir_box_chunk) _menhir_state
    (** State 039.
        Stack shape : exp9.
        Start symbol: chunk. *)

  | MenhirState043 : (('s, _menhir_box_chunk) _menhir_cell1_base_exp, _menhir_box_chunk) _menhir_state
    (** State 043.
        Stack shape : base_exp.
        Start symbol: chunk. *)

  | MenhirState045 : (('s, _menhir_box_chunk) _menhir_cell1_exp9, _menhir_box_chunk) _menhir_state
    (** State 045.
        Stack shape : exp9.
        Start symbol: chunk. *)

  | MenhirState047 : (('s, _menhir_box_chunk) _menhir_cell1_exp9, _menhir_box_chunk) _menhir_state
    (** State 047.
        Stack shape : exp9.
        Start symbol: chunk. *)

  | MenhirState049 : (('s, _menhir_box_chunk) _menhir_cell1_exp9, _menhir_box_chunk) _menhir_state
    (** State 049.
        Stack shape : exp9.
        Start symbol: chunk. *)

  | MenhirState052 : (('s, _menhir_box_chunk) _menhir_cell1_exp8, _menhir_box_chunk) _menhir_state
    (** State 052.
        Stack shape : exp8.
        Start symbol: chunk. *)

  | MenhirState055 : (('s, _menhir_box_chunk) _menhir_cell1_exp8, _menhir_box_chunk) _menhir_state
    (** State 055.
        Stack shape : exp8.
        Start symbol: chunk. *)

  | MenhirState057 : (('s, _menhir_box_chunk) _menhir_cell1_exp8, _menhir_box_chunk) _menhir_state
    (** State 057.
        Stack shape : exp8.
        Start symbol: chunk. *)

  | MenhirState061 : (('s, _menhir_box_chunk) _menhir_cell1_exp6, _menhir_box_chunk) _menhir_state
    (** State 061.
        Stack shape : exp6.
        Start symbol: chunk. *)

  | MenhirState063 : (('s, _menhir_box_chunk) _menhir_cell1_exp6, _menhir_box_chunk) _menhir_state
    (** State 063.
        Stack shape : exp6.
        Start symbol: chunk. *)

  | MenhirState066 : (('s, _menhir_box_chunk) _menhir_cell1_exp5, _menhir_box_chunk) _menhir_state
    (** State 066.
        Stack shape : exp5.
        Start symbol: chunk. *)

  | MenhirState069 : (('s, _menhir_box_chunk) _menhir_cell1_exp4, _menhir_box_chunk) _menhir_state
    (** State 069.
        Stack shape : exp4.
        Start symbol: chunk. *)

  | MenhirState072 : (('s, _menhir_box_chunk) _menhir_cell1_exp3, _menhir_box_chunk) _menhir_state
    (** State 072.
        Stack shape : exp3.
        Start symbol: chunk. *)

  | MenhirState075 : (('s, _menhir_box_chunk) _menhir_cell1_exp2, _menhir_box_chunk) _menhir_state
    (** State 075.
        Stack shape : exp2.
        Start symbol: chunk. *)

  | MenhirState077 : (('s, _menhir_box_chunk) _menhir_cell1_exp2, _menhir_box_chunk) _menhir_state
    (** State 077.
        Stack shape : exp2.
        Start symbol: chunk. *)

  | MenhirState079 : (('s, _menhir_box_chunk) _menhir_cell1_exp2, _menhir_box_chunk) _menhir_state
    (** State 079.
        Stack shape : exp2.
        Start symbol: chunk. *)

  | MenhirState081 : (('s, _menhir_box_chunk) _menhir_cell1_exp2, _menhir_box_chunk) _menhir_state
    (** State 081.
        Stack shape : exp2.
        Start symbol: chunk. *)

  | MenhirState083 : (('s, _menhir_box_chunk) _menhir_cell1_exp2, _menhir_box_chunk) _menhir_state
    (** State 083.
        Stack shape : exp2.
        Start symbol: chunk. *)

  | MenhirState085 : (('s, _menhir_box_chunk) _menhir_cell1_exp2, _menhir_box_chunk) _menhir_state
    (** State 085.
        Stack shape : exp2.
        Start symbol: chunk. *)

  | MenhirState088 : (('s, _menhir_box_chunk) _menhir_cell1_exp1, _menhir_box_chunk) _menhir_state
    (** State 088.
        Stack shape : exp1.
        Start symbol: chunk. *)

  | MenhirState092 : (('s, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 092.
        Stack shape : exp.
        Start symbol: chunk. *)

  | MenhirState097 : ((('s, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_COLON _menhir_cell0_NAME, _menhir_box_chunk) _menhir_state
    (** State 097.
        Stack shape : functioncall COLON NAME.
        Start symbol: chunk. *)

  | MenhirState104 : (('s, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 104.
        Stack shape : exp.
        Start symbol: chunk. *)

  | MenhirState106 : ((('s, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_state
    (** State 106.
        Stack shape : pexp LBRACKET.
        Start symbol: chunk. *)

  | MenhirState112 : ((('s, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_COLON _menhir_cell0_NAME, _menhir_box_chunk) _menhir_state
    (** State 112.
        Stack shape : pexp COLON NAME.
        Start symbol: chunk. *)

  | MenhirState117 : ((('s, _menhir_box_chunk) _menhir_cell1_RETURN, _menhir_box_chunk) _menhir_cell1_explist, _menhir_box_chunk) _menhir_state
    (** State 117.
        Stack shape : RETURN explist.
        Start symbol: chunk. *)

  | MenhirState119 : (('s, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_state
    (** State 119.
        Stack shape : REPEAT.
        Start symbol: chunk. *)

  | MenhirState120 : (('s, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_state
    (** State 120.
        Stack shape : LOCAL.
        Start symbol: chunk. *)

  | MenhirState122 : (('s, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_state
    (** State 122.
        Stack shape : NAME.
        Start symbol: chunk. *)

  | MenhirState128 : ((('s, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_FUNCTION _menhir_cell0_NAME _menhir_cell0_option___anonymous_3_, _menhir_box_chunk) _menhir_state
    (** State 128.
        Stack shape : LOCAL FUNCTION NAME option(__anonymous_3).
        Start symbol: chunk. *)

  | MenhirState132 : ((('s, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist, _menhir_box_chunk) _menhir_state
    (** State 132.
        Stack shape : LOCAL namelist.
        Start symbol: chunk. *)

  | MenhirState135 : (('s, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_state
    (** State 135.
        Stack shape : IF.
        Start symbol: chunk. *)

  | MenhirState137 : ((('s, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 137.
        Stack shape : IF exp.
        Start symbol: chunk. *)

  | MenhirState140 : (('s, _menhir_box_chunk) _menhir_cell1_FUNCTION, _menhir_box_chunk) _menhir_state
    (** State 140.
        Stack shape : FUNCTION.
        Start symbol: chunk. *)

  | MenhirState142 : (('s, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_state
    (** State 142.
        Stack shape : NAME.
        Start symbol: chunk. *)

  | MenhirState147 : ((('s, _menhir_box_chunk) _menhir_cell1_FUNCTION, _menhir_box_chunk) _menhir_cell1_separated_nonempty_list_DOT_NAME_ _menhir_cell0_option_methodcall_, _menhir_box_chunk) _menhir_state
    (** State 147.
        Stack shape : FUNCTION separated_nonempty_list(DOT,NAME) option(methodcall).
        Start symbol: chunk. *)

  | MenhirState150 : (('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_state
    (** State 150.
        Stack shape : FOR.
        Start symbol: chunk. *)

  | MenhirState152 : ((('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_state
    (** State 152.
        Stack shape : FOR NAME.
        Start symbol: chunk. *)

  | MenhirState154 : (((('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 154.
        Stack shape : FOR NAME exp.
        Start symbol: chunk. *)

  | MenhirState156 : ((((('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 156.
        Stack shape : FOR NAME exp exp.
        Start symbol: chunk. *)

  | MenhirState159 : ((((('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp _menhir_cell0_option___anonymous_2_, _menhir_box_chunk) _menhir_state
    (** State 159.
        Stack shape : FOR NAME exp exp option(__anonymous_2).
        Start symbol: chunk. *)

  | MenhirState163 : (('s, _menhir_box_chunk) _menhir_cell1_DO, _menhir_box_chunk) _menhir_state
    (** State 163.
        Stack shape : DO.
        Start symbol: chunk. *)

  | MenhirState166 : (('s, _menhir_box_chunk) _menhir_cell1_varlist, _menhir_box_chunk) _menhir_state
    (** State 166.
        Stack shape : varlist.
        Start symbol: chunk. *)

  | MenhirState169 : (('s, _menhir_box_chunk) _menhir_cell1_var, _menhir_box_chunk) _menhir_state
    (** State 169.
        Stack shape : var.
        Start symbol: chunk. *)

  | MenhirState171 : (('s, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_state
    (** State 171.
        Stack shape : pexp.
        Start symbol: chunk. *)

  | MenhirState172 : ((('s, _menhir_box_chunk) _menhir_cell1_var, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_state
    (** State 172.
        Stack shape : var functioncall.
        Start symbol: chunk. *)

  | MenhirState173 : (('s, _menhir_box_chunk) _menhir_cell1_stat, _menhir_box_chunk) _menhir_state
    (** State 173.
        Stack shape : stat.
        Start symbol: chunk. *)

  | MenhirState178 : (('s, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_state
    (** State 178.
        Stack shape : functioncall.
        Start symbol: chunk. *)

  | MenhirState185 : ((('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist, _menhir_box_chunk) _menhir_state
    (** State 185.
        Stack shape : FOR namelist.
        Start symbol: chunk. *)

  | MenhirState187 : (((('s, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist, _menhir_box_chunk) _menhir_cell1_explist, _menhir_box_chunk) _menhir_state
    (** State 187.
        Stack shape : FOR namelist explist.
        Start symbol: chunk. *)

  | MenhirState190 : (((('s, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_state
    (** State 190.
        Stack shape : IF exp block.
        Start symbol: chunk. *)

  | MenhirState191 : (((('s, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF, _menhir_box_chunk) _menhir_state
    (** State 191.
        Stack shape : exp block ELSEIF.
        Start symbol: chunk. *)

  | MenhirState193 : ((((('s, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 193.
        Stack shape : exp block ELSEIF exp.
        Start symbol: chunk. *)

  | MenhirState194 : (((((('s, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_state
    (** State 194.
        Stack shape : exp block ELSEIF exp block.
        Start symbol: chunk. *)

  | MenhirState197 : ((((('s, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_list___anonymous_0_, _menhir_box_chunk) _menhir_state
    (** State 197.
        Stack shape : IF exp block list(__anonymous_0).
        Start symbol: chunk. *)

  | MenhirState202 : ((('s, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_state
    (** State 202.
        Stack shape : REPEAT block.
        Start symbol: chunk. *)

  | MenhirState210 : (('s, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_state
    (** State 210.
        Stack shape : NAME.
        Start symbol: chunk. *)

  | MenhirState212 : (('s, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_state
    (** State 212.
        Stack shape : LBRACKET.
        Start symbol: chunk. *)

  | MenhirState215 : ((('s, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 215.
        Stack shape : LBRACKET exp.
        Start symbol: chunk. *)

  | MenhirState222 : (('s, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator, _menhir_box_chunk) _menhir_state
    (** State 222.
        Stack shape : field field_separator.
        Start symbol: chunk. *)

  | MenhirState231 : ((('s, _menhir_box_chunk) _menhir_cell1_WHILE, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_state
    (** State 231.
        Stack shape : WHILE exp.
        Start symbol: chunk. *)


and ('s, 'r) _menhir_cell1_base_exp = 
  | MenhirCell1_base_exp of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (Internalast.block)

and ('s, 'r) _menhir_cell1_exp = 
  | MenhirCell1_exp of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp1 = 
  | MenhirCell1_exp1 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp2 = 
  | MenhirCell1_exp2 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp3 = 
  | MenhirCell1_exp3 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp4 = 
  | MenhirCell1_exp4 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp5 = 
  | MenhirCell1_exp5 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp6 = 
  | MenhirCell1_exp6 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp8 = 
  | MenhirCell1_exp8 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_exp9 = 
  | MenhirCell1_exp9 of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_explist = 
  | MenhirCell1_explist of 's * ('s, 'r) _menhir_state * (Internalast.retstat)

and ('s, 'r) _menhir_cell1_field = 
  | MenhirCell1_field of 's * ('s, 'r) _menhir_state * (Internalast.exp option * Internalast.exp)

and 's _menhir_cell0_field_separator = 
  | MenhirCell0_field_separator of 's * (unit)

and ('s, 'r) _menhir_cell1_functioncall = 
  | MenhirCell1_functioncall of 's * ('s, 'r) _menhir_state * (Internalast.functioncall)

and ('s, 'r) _menhir_cell1_list___anonymous_0_ = 
  | MenhirCell1_list___anonymous_0_ of 's * ('s, 'r) _menhir_state * ((Internalast.exp * Internalast.block) list)

and ('s, 'r) _menhir_cell1_namelist = 
  | MenhirCell1_namelist of 's * ('s, 'r) _menhir_state * (string list)

and 's _menhir_cell0_option___anonymous_2_ = 
  | MenhirCell0_option___anonymous_2_ of 's * (Internalast.exp option)

and 's _menhir_cell0_option___anonymous_3_ = 
  | MenhirCell0_option___anonymous_3_ of 's * (string option)

and 's _menhir_cell0_option_methodcall_ = 
  | MenhirCell0_option_methodcall_ of 's * (string option)

and ('s, 'r) _menhir_cell1_option_parlist_ = 
  | MenhirCell1_option_parlist_ of 's * ('s, 'r) _menhir_state * ((string list * unit option) option)

and ('s, 'r) _menhir_cell1_pexp = 
  | MenhirCell1_pexp of 's * ('s, 'r) _menhir_state * (Internalast.exp)

and ('s, 'r) _menhir_cell1_separated_nonempty_list_DOT_NAME_ = 
  | MenhirCell1_separated_nonempty_list_DOT_NAME_ of 's * ('s, 'r) _menhir_state * (string list)

and ('s, 'r) _menhir_cell1_stat = 
  | MenhirCell1_stat of 's * ('s, 'r) _menhir_state * (Internalast.stat)

and ('s, 'r) _menhir_cell1_var = 
  | MenhirCell1_var of 's * ('s, 'r) _menhir_state * (Internalast.var)

and ('s, 'r) _menhir_cell1_varlist = 
  | MenhirCell1_varlist of 's * ('s, 'r) _menhir_state * (Internalast.var list)

and ('s, 'r) _menhir_cell1_COLON = 
  | MenhirCell1_COLON of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DO = 
  | MenhirCell1_DO of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ELSEIF = 
  | MenhirCell1_ELSEIF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FUNCTION = 
  | MenhirCell1_FUNCTION of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_HYPHEN = 
  | MenhirCell1_HYPHEN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACKET = 
  | MenhirCell1_LBRACKET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LOCAL = 
  | MenhirCell1_LOCAL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NAME = 
  | MenhirCell1_NAME of 's * ('s, 'r) _menhir_state * (
# 67 "parser/parser.mly"
       (Internalast.name)
# 611 "parser/parser.ml"
)

and 's _menhir_cell0_NAME = 
  | MenhirCell0_NAME of 's * (
# 67 "parser/parser.mly"
       (Internalast.name)
# 618 "parser/parser.ml"
)

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_REPEAT = 
  | MenhirCell1_REPEAT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SEMICOLON = 
  | MenhirCell1_SEMICOLON of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SHARP = 
  | MenhirCell1_SHARP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TILDA = 
  | MenhirCell1_TILDA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_chunk = 
  | MenhirBox_chunk of (Internalast.block) [@@unboxed]

let _menhir_action_001 =
  fun () ->
    (
# 316 "parser/parser.mly"
                   ( [] )
# 650 "parser/parser.ml"
     : (Internalast.args))

let _menhir_action_002 =
  fun es ->
    (
# 317 "parser/parser.mly"
                                 ( es )
# 658 "parser/parser.ml"
     : (Internalast.args))

let _menhir_action_003 =
  fun s ->
    (
# 318 "parser/parser.mly"
                      ( [LiteralString s] )
# 666 "parser/parser.ml"
     : (Internalast.args))

let _menhir_action_004 =
  fun t ->
    (
# 319 "parser/parser.mly"
                    ( [Table t] )
# 674 "parser/parser.ml"
     : (Internalast.args))

let _menhir_action_005 =
  fun () ->
    (
# 203 "parser/parser.mly"
        ( Nil )
# 682 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_006 =
  fun () ->
    (
# 204 "parser/parser.mly"
         ( True )
# 690 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_007 =
  fun () ->
    (
# 205 "parser/parser.mly"
          ( False )
# 698 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_008 =
  fun fc ->
    let p = 
# 218 "parser/parser.mly"
                      ( FunctionCallE fc )
# 706 "parser/parser.ml"
     in
    (
# 206 "parser/parser.mly"
                  ( p )
# 711 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_009 =
  fun p ->
    let p = 
# 219 "parser/parser.mly"
             ( p )
# 719 "parser/parser.ml"
     in
    (
# 206 "parser/parser.mly"
                  ( p )
# 724 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_010 =
  fun i ->
    (
# 207 "parser/parser.mly"
                ( Integer i )
# 732 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_011 =
  fun f ->
    (
# 208 "parser/parser.mly"
              ( Float f )
# 740 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_012 =
  fun s ->
    (
# 209 "parser/parser.mly"
                      ( LiteralString s )
# 748 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_013 =
  fun t ->
    (
# 210 "parser/parser.mly"
                    ( Table t )
# 756 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_014 =
  fun () ->
    (
# 211 "parser/parser.mly"
              ( Vararg )
# 764 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_015 =
  fun fb ->
    (
# 212 "parser/parser.mly"
                            ( FunctionDef fb )
# 772 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_016 =
  fun r ->
    (
# 77 "parser/parser.mly"
                 ( [], r )
# 780 "parser/parser.ml"
     : (Internalast.block))

let _menhir_action_017 =
  fun b ->
    (
# 78 "parser/parser.mly"
                         ( b )
# 788 "parser/parser.ml"
     : (Internalast.block))

let _menhir_action_018 =
  fun b s ->
    (
# 79 "parser/parser.mly"
                        ( s::fst b, snd b )
# 796 "parser/parser.ml"
     : (Internalast.block))

let _menhir_action_019 =
  fun b ->
    (
# 73 "parser/parser.mly"
                   ( b )
# 804 "parser/parser.ml"
     : (Internalast.block))

let _menhir_action_020 =
  fun e1 e2 ->
    (
# 143 "parser/parser.mly"
                            ( BinOp (LogicalOr, e1, e2) )
# 812 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_021 =
  fun e ->
    (
# 144 "parser/parser.mly"
             ( e )
# 820 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_022 =
  fun e1 e2 ->
    (
# 148 "parser/parser.mly"
                              ( BinOp (LogicalAnd, e1, e2) )
# 828 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_023 =
  fun e ->
    (
# 149 "parser/parser.mly"
             ( e )
# 836 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_024 =
  fun e ->
    let u = 
# 286 "parser/parser.mly"
           ( UnaryMinus )
# 844 "parser/parser.ml"
     in
    (
# 193 "parser/parser.mly"
                        ( UnOp (u, e) )
# 849 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_025 =
  fun e ->
    let u = 
# 287 "parser/parser.mly"
        ( LogicalNot )
# 857 "parser/parser.ml"
     in
    (
# 193 "parser/parser.mly"
                        ( UnOp (u, e) )
# 862 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_026 =
  fun e ->
    let u = 
# 288 "parser/parser.mly"
          ( Length )
# 870 "parser/parser.ml"
     in
    (
# 193 "parser/parser.mly"
                        ( UnOp (u, e) )
# 875 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_027 =
  fun e ->
    let u = 
# 289 "parser/parser.mly"
          ( BitwiseNot )
# 883 "parser/parser.ml"
     in
    (
# 193 "parser/parser.mly"
                        ( UnOp (u, e) )
# 888 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_028 =
  fun e ->
    (
# 194 "parser/parser.mly"
              ( e )
# 896 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_029 =
  fun e1 e2 ->
    (
# 198 "parser/parser.mly"
                                   ( BinOp (Exponentiation, e1, e2) )
# 904 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_030 =
  fun e ->
    (
# 199 "parser/parser.mly"
                 ( e )
# 912 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_031 =
  fun e1 e2 ->
    let b = 
# 260 "parser/parser.mly"
       ( Less )
# 920 "parser/parser.ml"
     in
    (
# 153 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 925 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_032 =
  fun e1 e2 ->
    let b = 
# 261 "parser/parser.mly"
       ( Greater )
# 933 "parser/parser.ml"
     in
    (
# 153 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 938 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_033 =
  fun e1 e2 ->
    let b = 
# 262 "parser/parser.mly"
         ( LessEq )
# 946 "parser/parser.ml"
     in
    (
# 153 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 951 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_034 =
  fun e1 e2 ->
    let b = 
# 263 "parser/parser.mly"
         ( GreaterEq )
# 959 "parser/parser.ml"
     in
    (
# 153 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 964 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_035 =
  fun e1 e2 ->
    let b = 
# 264 "parser/parser.mly"
               ( Inequality )
# 972 "parser/parser.ml"
     in
    (
# 153 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 977 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_036 =
  fun e1 e2 ->
    let b = 
# 265 "parser/parser.mly"
                ( Equality )
# 985 "parser/parser.ml"
     in
    (
# 153 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 990 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_037 =
  fun e ->
    (
# 154 "parser/parser.mly"
             ( e )
# 998 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_038 =
  fun e1 e2 ->
    (
# 158 "parser/parser.mly"
                                      ( BinOp (BitwiseOr, e1, e2) )
# 1006 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_039 =
  fun e ->
    (
# 159 "parser/parser.mly"
             ( e )
# 1014 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_040 =
  fun e1 e2 ->
    (
# 163 "parser/parser.mly"
                                ( BinOp (BitwiseXor, e1, e2) )
# 1022 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_041 =
  fun e ->
    (
# 164 "parser/parser.mly"
             ( e )
# 1030 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_042 =
  fun e1 e2 ->
    (
# 168 "parser/parser.mly"
                                    ( BinOp (BitwiseAnd, e1, e2) )
# 1038 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_043 =
  fun e ->
    (
# 169 "parser/parser.mly"
             ( e )
# 1046 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_044 =
  fun e1 e2 ->
    let b = 
# 269 "parser/parser.mly"
             ( ShiftLeft )
# 1054 "parser/parser.ml"
     in
    (
# 173 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 1059 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_045 =
  fun e1 e2 ->
    let b = 
# 270 "parser/parser.mly"
             ( ShiftRight )
# 1067 "parser/parser.ml"
     in
    (
# 173 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 1072 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_046 =
  fun e ->
    (
# 174 "parser/parser.mly"
             ( e )
# 1080 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_047 =
  fun e1 e2 ->
    (
# 178 "parser/parser.mly"
                                    ( BinOp (Concat, e1, e2) )
# 1088 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_048 =
  fun e ->
    (
# 179 "parser/parser.mly"
             ( e )
# 1096 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_049 =
  fun e1 e2 ->
    let b = 
# 274 "parser/parser.mly"
         ( Addition )
# 1104 "parser/parser.ml"
     in
    (
# 183 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 1109 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_050 =
  fun e1 e2 ->
    let b = 
# 275 "parser/parser.mly"
           ( Subtraction )
# 1117 "parser/parser.ml"
     in
    (
# 183 "parser/parser.mly"
                                     ( BinOp (b, e1, e2) )
# 1122 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_051 =
  fun e ->
    (
# 184 "parser/parser.mly"
             ( e )
# 1130 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_052 =
  fun e1 e2 ->
    let b = 
# 279 "parser/parser.mly"
             ( Multiplication )
# 1138 "parser/parser.ml"
     in
    (
# 188 "parser/parser.mly"
                                      ( BinOp (b, e1, e2) )
# 1143 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_053 =
  fun e1 e2 ->
    let b = 
# 280 "parser/parser.mly"
          ( FloatDivision )
# 1151 "parser/parser.ml"
     in
    (
# 188 "parser/parser.mly"
                                      ( BinOp (b, e1, e2) )
# 1156 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_054 =
  fun e1 e2 ->
    let b = 
# 281 "parser/parser.mly"
                ( FloorDivision )
# 1164 "parser/parser.ml"
     in
    (
# 188 "parser/parser.mly"
                                      ( BinOp (b, e1, e2) )
# 1169 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_055 =
  fun e1 e2 ->
    let b = 
# 282 "parser/parser.mly"
            ( Modulo )
# 1177 "parser/parser.ml"
     in
    (
# 188 "parser/parser.mly"
                                      ( BinOp (b, e1, e2) )
# 1182 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_056 =
  fun e ->
    (
# 189 "parser/parser.mly"
              ( e )
# 1190 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_057 =
  fun es ->
    (
# 231 "parser/parser.mly"
                                             ( es )
# 1198 "parser/parser.ml"
     : (Internalast.retstat))

let _menhir_action_058 =
  fun k v ->
    (
# 254 "parser/parser.mly"
                                                ( Some k, v )
# 1206 "parser/parser.ml"
     : (Internalast.exp option * Internalast.exp))

let _menhir_action_059 =
  fun n v ->
    (
# 255 "parser/parser.mly"
                             ( Some (LiteralString n), v )
# 1214 "parser/parser.ml"
     : (Internalast.exp option * Internalast.exp))

let _menhir_action_060 =
  fun v ->
    (
# 256 "parser/parser.mly"
            ( None, v )
# 1222 "parser/parser.ml"
     : (Internalast.exp option * Internalast.exp))

let _menhir_action_061 =
  fun () ->
    (
# 240 "parser/parser.mly"
              ( () )
# 1230 "parser/parser.ml"
     : (unit))

let _menhir_action_062 =
  fun () ->
    (
# 241 "parser/parser.mly"
              ( () )
# 1238 "parser/parser.ml"
     : (unit))

let _menhir_action_063 =
  fun f ->
    (
# 245 "parser/parser.mly"
              ( [f] )
# 1246 "parser/parser.ml"
     : (Internalast.tableconstr))

let _menhir_action_064 =
  fun f fs ->
    (
# 247 "parser/parser.mly"
    ( match fs with
      | Some fs -> f :: fs
      | None    -> [f]
    )
# 1257 "parser/parser.ml"
     : (Internalast.tableconstr))

let _menhir_action_065 =
  fun b pl ->
    (
# 304 "parser/parser.mly"
    ( let ps, va = Option.value pl ~default:([], None) in
      ps, va, b )
# 1266 "parser/parser.ml"
     : (Internalast.funcbody))

let _menhir_action_066 =
  fun a fc ->
    let p = 
# 218 "parser/parser.mly"
                      ( FunctionCallE fc )
# 1274 "parser/parser.ml"
     in
    (
# 298 "parser/parser.mly"
                            ( Function (p, a) )
# 1279 "parser/parser.ml"
     : (Internalast.functioncall))

let _menhir_action_067 =
  fun a p ->
    let p = 
# 219 "parser/parser.mly"
             ( p )
# 1287 "parser/parser.ml"
     in
    (
# 298 "parser/parser.mly"
                            ( Function (p, a) )
# 1292 "parser/parser.ml"
     : (Internalast.functioncall))

let _menhir_action_068 =
  fun a fc n ->
    let p = 
# 218 "parser/parser.mly"
                      ( FunctionCallE fc )
# 1300 "parser/parser.ml"
     in
    (
# 299 "parser/parser.mly"
                                             ( Method(p, n, a) )
# 1305 "parser/parser.ml"
     : (Internalast.functioncall))

let _menhir_action_069 =
  fun a n p ->
    let p = 
# 219 "parser/parser.mly"
             ( p )
# 1313 "parser/parser.ml"
     in
    (
# 299 "parser/parser.mly"
                                             ( Method(p, n, a) )
# 1318 "parser/parser.ml"
     : (Internalast.functioncall))

let _menhir_action_070 =
  fun n ->
    (
# 133 "parser/parser.mly"
                                       ( Label n )
# 1326 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_071 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1334 "parser/parser.ml"
     : ((Internalast.exp * Internalast.block) list))

let _menhir_action_072 =
  fun b e xs ->
    let x = 
# 92 "parser/parser.mly"
                                               ( (e, b) )
# 1342 "parser/parser.ml"
     in
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1347 "parser/parser.ml"
     : ((Internalast.exp * Internalast.block) list))

let _menhir_action_073 =
  fun n ->
    (
# 124 "parser/parser.mly"
                    ( n )
# 1355 "parser/parser.ml"
     : (string))

let _menhir_action_074 =
  fun ns ->
    (
# 223 "parser/parser.mly"
                                              ( ns )
# 1363 "parser/parser.ml"
     : (string list))

let _menhir_action_075 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1371 "parser/parser.ml"
     : (unit option))

let _menhir_action_076 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1379 "parser/parser.ml"
     : (unit option))

let _menhir_action_077 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1387 "parser/parser.ml"
     : (Internalast.block option))

let _menhir_action_078 =
  fun b ->
    let x = 
# 93 "parser/parser.mly"
                                ( b )
# 1395 "parser/parser.ml"
     in
    (
# 113 "<standard.mly>"
    ( Some x )
# 1400 "parser/parser.ml"
     : (Internalast.block option))

let _menhir_action_079 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1408 "parser/parser.ml"
     : (Internalast.exp option))

let _menhir_action_080 =
  fun e ->
    let x = 
# 96 "parser/parser.mly"
                                                          ( e )
# 1416 "parser/parser.ml"
     in
    (
# 113 "<standard.mly>"
    ( Some x )
# 1421 "parser/parser.ml"
     : (Internalast.exp option))

let _menhir_action_081 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1429 "parser/parser.ml"
     : (string option))

let _menhir_action_082 =
  fun n ->
    let x = 
# 117 "parser/parser.mly"
                                                    ( n )
# 1437 "parser/parser.ml"
     in
    (
# 113 "<standard.mly>"
    ( Some x )
# 1442 "parser/parser.ml"
     : (string option))

let _menhir_action_083 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1450 "parser/parser.ml"
     : (Internalast.retstat option))

let _menhir_action_084 =
  fun es ->
    let x = 
# 119 "parser/parser.mly"
                                                          ( es )
# 1458 "parser/parser.ml"
     in
    (
# 113 "<standard.mly>"
    ( Some x )
# 1463 "parser/parser.ml"
     : (Internalast.retstat option))

let _menhir_action_085 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1471 "parser/parser.ml"
     : (Internalast.tableconstr option))

let _menhir_action_086 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1479 "parser/parser.ml"
     : (Internalast.tableconstr option))

let _menhir_action_087 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1487 "parser/parser.ml"
     : (string option))

let _menhir_action_088 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1495 "parser/parser.ml"
     : (string option))

let _menhir_action_089 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1503 "parser/parser.ml"
     : ((string list * unit option) option))

let _menhir_action_090 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1511 "parser/parser.ml"
     : ((string list * unit option) option))

let _menhir_action_091 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1519 "parser/parser.ml"
     : (Internalast.retstat option))

let _menhir_action_092 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1527 "parser/parser.ml"
     : (Internalast.retstat option))

let _menhir_action_093 =
  fun () ->
    (
# 309 "parser/parser.mly"
              ( [], Some () )
# 1535 "parser/parser.ml"
     : (string list * unit option))

let _menhir_action_094 =
  fun n ->
    (
# 310 "parser/parser.mly"
             ( [n], None )
# 1543 "parser/parser.ml"
     : (string list * unit option))

let _menhir_action_095 =
  fun n ps ->
    (
# 312 "parser/parser.mly"
    ( match ps with ps, va -> n :: ps, va )
# 1551 "parser/parser.ml"
     : (string list * unit option))

let _menhir_action_096 =
  fun v ->
    (
# 293 "parser/parser.mly"
            ( Var v )
# 1559 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_097 =
  fun e ->
    (
# 294 "parser/parser.mly"
                            ( e )
# 1567 "parser/parser.ml"
     : (Internalast.exp))

let _menhir_action_098 =
  fun es ->
    (
# 128 "parser/parser.mly"
                                     ( es )
# 1575 "parser/parser.ml"
     : (Internalast.retstat))

let _menhir_action_099 =
  fun () ->
    (
# 129 "parser/parser.mly"
                       ( [] )
# 1583 "parser/parser.ml"
     : (Internalast.retstat))

let _menhir_action_100 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1591 "parser/parser.ml"
     : (string list))

let _menhir_action_101 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1599 "parser/parser.ml"
     : (string list))

let _menhir_action_102 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1607 "parser/parser.ml"
     : (Internalast.retstat))

let _menhir_action_103 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1615 "parser/parser.ml"
     : (Internalast.retstat))

let _menhir_action_104 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1623 "parser/parser.ml"
     : (Internalast.var list))

let _menhir_action_105 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1631 "parser/parser.ml"
     : (Internalast.var list))

let _menhir_action_106 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1639 "parser/parser.ml"
     : (string list))

let _menhir_action_107 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1647 "parser/parser.ml"
     : (string list))

let _menhir_action_108 =
  fun es vs ->
    (
# 83 "parser/parser.mly"
                                      ( Assign (vs, es) )
# 1655 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_109 =
  fun fc ->
    (
# 84 "parser/parser.mly"
                      ( FunctionCall fc )
# 1663 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_110 =
  fun l ->
    (
# 85 "parser/parser.mly"
              ( l )
# 1671 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_111 =
  fun () ->
    (
# 86 "parser/parser.mly"
          ( Break )
# 1679 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_112 =
  fun n ->
    (
# 87 "parser/parser.mly"
                   ( Goto n )
# 1687 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_113 =
  fun b ->
    (
# 88 "parser/parser.mly"
                       ( DoEnd b )
# 1695 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_114 =
  fun b e ->
    (
# 89 "parser/parser.mly"
                                       ( WhileDoEnd (e, b) )
# 1703 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_115 =
  fun b e ->
    (
# 90 "parser/parser.mly"
                                      ( RepeatUntil (b, e) )
# 1711 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_116 =
  fun b1 b2 br e ->
    (
# 94 "parser/parser.mly"
      ( If ((e, b1) :: br, b2) )
# 1719 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_117 =
  fun b e1 e2 e3 n ->
    (
# 98 "parser/parser.mly"
      ( ForStep (n, e1, e2, e3, b) )
# 1727 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_118 =
  fun b es ns ->
    (
# 101 "parser/parser.mly"
      ( ForIn (ns, es, b) )
# 1735 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_119 =
  fun _l fb n ->
    (
# 104 "parser/parser.mly"
    ( let fb =
        let (params, vararg, body) = fb
        in FunctionDef ("self" :: params, vararg, body)
      in
      (* "a.b.c" -> IndexTable ( ... , LiteralString c) *)
      let rec var_of_names : name list -> var = function
        | [] -> failwith "var_of_names"
        | [n] -> Name n
        | n :: ns -> IndexTable (Var (var_of_names ns), LiteralString n)
      in
      let v = var_of_names (List.rev n) in
      Assign ([v], [fb]) )
# 1754 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_120 =
  fun _l fb n ->
    (
# 118 "parser/parser.mly"
    ( LocalAssign ([n], Some [FunctionDef fb]) )
# 1762 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_121 =
  fun es ns ->
    (
# 120 "parser/parser.mly"
    ( LocalAssign (ns, es) )
# 1770 "parser/parser.ml"
     : (Internalast.stat))

let _menhir_action_122 =
  fun () ->
    (
# 235 "parser/parser.mly"
                   ( [] )
# 1778 "parser/parser.ml"
     : (Internalast.tableconstr))

let _menhir_action_123 =
  fun fs ->
    (
# 236 "parser/parser.mly"
                                ( fs )
# 1786 "parser/parser.ml"
     : (Internalast.tableconstr))

let _menhir_action_124 =
  fun n ->
    (
# 137 "parser/parser.mly"
             ( Name n )
# 1794 "parser/parser.ml"
     : (Internalast.var))

let _menhir_action_125 =
  fun e fc ->
    let pe = 
# 218 "parser/parser.mly"
                      ( FunctionCallE fc )
# 1802 "parser/parser.ml"
     in
    (
# 138 "parser/parser.mly"
                                                ( IndexTable (pe, e) )
# 1807 "parser/parser.ml"
     : (Internalast.var))

let _menhir_action_126 =
  fun e p ->
    let pe = 
# 219 "parser/parser.mly"
             ( p )
# 1815 "parser/parser.ml"
     in
    (
# 138 "parser/parser.mly"
                                                ( IndexTable (pe, e) )
# 1820 "parser/parser.ml"
     : (Internalast.var))

let _menhir_action_127 =
  fun fc n ->
    let pe = 
# 218 "parser/parser.mly"
                      ( FunctionCallE fc )
# 1828 "parser/parser.ml"
     in
    (
# 139 "parser/parser.mly"
                                  ( IndexTable (pe, LiteralString n) )
# 1833 "parser/parser.ml"
     : (Internalast.var))

let _menhir_action_128 =
  fun n p ->
    let pe = 
# 219 "parser/parser.mly"
             ( p )
# 1841 "parser/parser.ml"
     in
    (
# 139 "parser/parser.mly"
                                  ( IndexTable (pe, LiteralString n) )
# 1846 "parser/parser.ml"
     : (Internalast.var))

let _menhir_action_129 =
  fun vs ->
    (
# 227 "parser/parser.mly"
                                             ( vs )
# 1854 "parser/parser.ml"
     : (Internalast.var list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AMPERSAND ->
        "AMPERSAND"
    | AND ->
        "AND"
    | ASTERISK ->
        "ASTERISK"
    | BREAK ->
        "BREAK"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | DO ->
        "DO"
    | DOT ->
        "DOT"
    | DOUBLECOLON ->
        "DOUBLECOLON"
    | DOUBLEDOT ->
        "DOUBLEDOT"
    | DOUBLEEQUAL ->
        "DOUBLEEQUAL"
    | DOUBLEGT ->
        "DOUBLEGT"
    | DOUBLELT ->
        "DOUBLELT"
    | DOUBLESLASH ->
        "DOUBLESLASH"
    | ELSE ->
        "ELSE"
    | ELSEIF ->
        "ELSEIF"
    | END ->
        "END"
    | EOF ->
        "EOF"
    | EQUAL ->
        "EQUAL"
    | FALSE ->
        "FALSE"
    | FLOAT _ ->
        "FLOAT"
    | FOR ->
        "FOR"
    | FUNCTION ->
        "FUNCTION"
    | GOTO ->
        "GOTO"
    | GT ->
        "GT"
    | GTEQ ->
        "GTEQ"
    | HAT ->
        "HAT"
    | HYPHEN ->
        "HYPHEN"
    | IF ->
        "IF"
    | IN ->
        "IN"
    | INTEGER _ ->
        "INTEGER"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LITERALSTRING _ ->
        "LITERALSTRING"
    | LOCAL ->
        "LOCAL"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | LTEQ ->
        "LTEQ"
    | NAME _ ->
        "NAME"
    | NIL ->
        "NIL"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | PERCENT ->
        "PERCENT"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | REPEAT ->
        "REPEAT"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | SEMICOLON ->
        "SEMICOLON"
    | SHARP ->
        "SHARP"
    | SLASH ->
        "SLASH"
    | THEN ->
        "THEN"
    | TILDA ->
        "TILDA"
    | TILDAEQUAL ->
        "TILDAEQUAL"
    | TRIPLEDOT ->
        "TRIPLEDOT"
    | TRUE ->
        "TRUE"
    | UNTIL ->
        "UNTIL"
    | VERTICALBAR ->
        "VERTICALBAR"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_235 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let b = _v in
          let _v = _menhir_action_019 b in
          MenhirBox_chunk _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | HAT ->
          let _menhir_stack = MenhirCell1_base_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
          | _ ->
              _eRR ())
      | AMPERSAND | AND | ASTERISK | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | DOUBLESLASH | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | HYPHEN | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | PERCENT | PLUS | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | SLASH | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let e = _v in
          let _v = _menhir_action_030 e in
          _menhir_goto_exp11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_043 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_base_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
  
  and _menhir_run_031 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LITERALSTRING _v_0 ->
          let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_0 in
          let _v = _menhir_action_003 s in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LBRACE ->
          let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | DOT ->
          let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COLON ->
          let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | AMPERSAND | AND | ASTERISK | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | DOUBLESLASH | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | HAT | HYPHEN | IF | LOCAL | LT | LTEQ | NAME _ | OR | PERCENT | PLUS | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | SLASH | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let p = _v in
          let _v = _menhir_action_009 p in
          _menhir_goto_base_exp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | TRIPLEDOT ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | TILDA ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | SHARP ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_001 () in
          _menhir_goto_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NOT ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | NIL ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | NAME _v ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | LITERALSTRING _v ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | LBRACE ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | INTEGER _v ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | HYPHEN ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | FLOAT _v ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TILDA (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_004 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_TILDA -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState007
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SHARP (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_008 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_SHARP -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | TRIPLEDOT ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | TILDA ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | SHARP ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_122 () in
          _menhir_goto_tableconstr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NOT ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | NIL ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | NAME _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010
      | LPAREN ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | LITERALSTRING _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | LBRACE ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | INTEGER _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | HYPHEN ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
      | FLOAT _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_tableconstr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState178 ->
          _menhir_run_098_spec_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState172 ->
          _menhir_run_098_spec_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState171 ->
          _menhir_run_098_spec_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState031 ->
          _menhir_run_098_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState112 ->
          _menhir_run_098_spec_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState035 ->
          _menhir_run_098_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState097 ->
          _menhir_run_098_spec_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState001 ->
          _menhir_run_030_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState004 ->
          _menhir_run_030_spec_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState007 ->
          _menhir_run_030_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState008 ->
          _menhir_run_030_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState222 ->
          _menhir_run_030_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState010 ->
          _menhir_run_030_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState215 ->
          _menhir_run_030_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState212 ->
          _menhir_run_030_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState210 ->
          _menhir_run_030_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState012 ->
          _menhir_run_030_spec_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_030_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_030_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_030_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_030_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_030_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState154 ->
          _menhir_run_030_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_030_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState135 ->
          _menhir_run_030_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_030_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_030_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_030_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState104 ->
          _menhir_run_030_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState092 ->
          _menhir_run_030_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState088 ->
          _menhir_run_030_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState085 ->
          _menhir_run_030_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState083 ->
          _menhir_run_030_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_030_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState079 ->
          _menhir_run_030_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_030_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_030_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_030_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState069 ->
          _menhir_run_030_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState066 ->
          _menhir_run_030_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState063 ->
          _menhir_run_030_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState061 ->
          _menhir_run_030_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_030_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_030_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState052 ->
          _menhir_run_030_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState049 ->
          _menhir_run_030_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState047 ->
          _menhir_run_030_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState045 ->
          _menhir_run_030_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState043 ->
          _menhir_run_030_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_030_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_030_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_030_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState026 ->
          _menhir_run_030_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_098_spec_178 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_100 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_functioncall (_menhir_stack, _menhir_s, fc) = _menhir_stack in
      let a = _v in
      let _v = _menhir_action_066 a fc in
      _menhir_goto_functioncall _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_functioncall : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState231 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState193 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState159 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState163 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState173 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState169 ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_178 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState178
      | LITERALSTRING _v_0 ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_0 in
          let _v = _menhir_action_003 s in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState178
      | LBRACE ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState178
      | DOT ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COLON ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState178
      | BREAK | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | NAME _ | REPEAT | RETURN | SEMICOLON | UNTIL | WHILE ->
          let fc = _v in
          let _v = _menhir_action_109 fc in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall as 'stack) -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_012 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUNCTION (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_093 () in
          _menhir_run_020_spec_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NAME _v ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015
      | RPAREN ->
          let _v = _menhir_action_089 () in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_020_spec_015 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_090 x in
      _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState015 _tok
  
  and _menhir_run_021 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_parlist_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | SEMICOLON ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | RETURN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | REPEAT ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | LOCAL ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | IF ->
              _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | GOTO ->
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | FUNCTION ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | FOR ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | DOUBLECOLON ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | DO ->
              _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | BREAK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022 _tok
          | END ->
              let _v_3 = _menhir_action_091 () in
              let r = _v_3 in
              let _v = _menhir_action_016 r in
              _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SEMICOLON (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | SEMICOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | RETURN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | REPEAT ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | LOCAL ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | IF ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | GOTO ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | FUNCTION ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | FOR ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | DOUBLECOLON ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | DO ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
      | BREAK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
      | ELSE | ELSEIF | END | EOF | UNTIL ->
          let _v = _menhir_action_091 () in
          let r = _v in
          let _v = _menhir_action_016 r in
          _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let x = () in
          let _ = _menhir_action_076 x in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
      | ELSE | ELSEIF | END | EOF | UNTIL ->
          let _ = _menhir_action_075 () in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_099 () in
      _menhir_goto_retstat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_retstat : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_092 x in
      let r = _v in
      let _v = _menhir_action_016 r in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_block : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_235 _menhir_stack _v _tok
      | MenhirState231 ->
          _menhir_run_232 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState022 ->
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState023 ->
          _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState119 ->
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState193 ->
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState159 ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState163 ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState173 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_232 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_exp (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_114 b e in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stat : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_173 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stat (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | SEMICOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | RETURN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | REPEAT ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | NAME _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v_0 in
          let _v = _menhir_action_124 n in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173 _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | LOCAL ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | IF ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | GOTO ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | FUNCTION ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | FOR ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | DOUBLECOLON ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | DO ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
      | BREAK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173 _tok
      | ELSE | ELSEIF | END | EOF | UNTIL ->
          let _v_3 = _menhir_action_091 () in
          let r = _v_3 in
          let _v = _menhir_action_016 r in
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_119 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REPEAT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | SEMICOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | RETURN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | REPEAT ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | LOCAL ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | IF ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | GOTO ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | FUNCTION ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | FOR ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | DOUBLECOLON ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | DO ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | BREAK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
      | UNTIL ->
          let _v = _menhir_action_091 () in
          let r = _v in
          let _v = _menhir_action_016 r in
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_168 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState169 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState169
          | _ ->
              _eRR ())
      | COLON | DOT | LBRACE | LBRACKET | LITERALSTRING _ | LPAREN ->
          let v = _v in
          let _v = _menhir_action_096 v in
          _menhir_goto_pexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | EQUAL ->
          let x = _v in
          let _v = _menhir_action_104 x in
          _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_pexp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState231 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState193 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState159 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState163 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState173 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState169 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_171 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_pexp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | LITERALSTRING _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_0 in
          let _v = _menhir_action_003 s in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LBRACKET ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | DOT ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COLON ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_pexp (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let a = _v in
      let _v = _menhir_action_067 a p in
      _menhir_goto_functioncall _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp as 'stack) -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_106 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_HYPHEN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_026 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_HYPHEN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
  
  and _menhir_run_109 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_pexp (_menhir_stack, _menhir_s, p) = _menhir_stack in
          let n = _v in
          let _v = _menhir_action_128 n p in
          _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_var : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState231 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState193 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState159 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState173 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState169 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState163 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_029_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState004 ->
          _menhir_run_029_spec_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState007 ->
          _menhir_run_029_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState008 ->
          _menhir_run_029_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState222 ->
          _menhir_run_029_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState010 ->
          _menhir_run_029_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState215 ->
          _menhir_run_029_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState212 ->
          _menhir_run_029_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState210 ->
          _menhir_run_029_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState012 ->
          _menhir_run_029_spec_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_029_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_029_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_029_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_029_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_029_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState154 ->
          _menhir_run_029_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_029_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState135 ->
          _menhir_run_029_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_029_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_029_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_029_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState104 ->
          _menhir_run_029_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState092 ->
          _menhir_run_029_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState088 ->
          _menhir_run_029_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState085 ->
          _menhir_run_029_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState083 ->
          _menhir_run_029_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_029_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState079 ->
          _menhir_run_029_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_029_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_029_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_029_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState069 ->
          _menhir_run_029_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState066 ->
          _menhir_run_029_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState063 ->
          _menhir_run_029_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState061 ->
          _menhir_run_029_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_029_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_029_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState052 ->
          _menhir_run_029_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState049 ->
          _menhir_run_029_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState047 ->
          _menhir_run_029_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState045 ->
          _menhir_run_029_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState043 ->
          _menhir_run_029_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_029_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_029_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_029_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState026 ->
          _menhir_run_029_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_029_spec_001 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
  
  and _menhir_run_029_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
  
  and _menhir_run_029_spec_222 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
  
  and _menhir_run_029_spec_010 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
  
  and _menhir_run_029_spec_215 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
  
  and _menhir_run_029_spec_212 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
  
  and _menhir_run_029_spec_210 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
  
  and _menhir_run_029_spec_202 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
  
  and _menhir_run_029_spec_191 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
  
  and _menhir_run_029_spec_185 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
  
  and _menhir_run_029_spec_166 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_varlist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
  
  and _menhir_run_029_spec_156 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
  
  and _menhir_run_029_spec_154 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
  
  and _menhir_run_029_spec_152 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
  
  and _menhir_run_029_spec_135 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
  
  and _menhir_run_029_spec_132 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
  
  and _menhir_run_029_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
  
  and _menhir_run_029_spec_104 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
  
  and _menhir_run_029_spec_092 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
  
  and _menhir_run_029_spec_088 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
  
  and _menhir_run_029_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
  
  and _menhir_run_029_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
  
  and _menhir_run_029_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
  
  and _menhir_run_029_spec_079 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
  
  and _menhir_run_029_spec_077 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
  
  and _menhir_run_029_spec_075 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
  
  and _menhir_run_029_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
  
  and _menhir_run_029_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
  
  and _menhir_run_029_spec_066 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
  
  and _menhir_run_029_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
  
  and _menhir_run_029_spec_061 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
  
  and _menhir_run_029_spec_057 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
  
  and _menhir_run_029_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
  
  and _menhir_run_029_spec_052 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
  
  and _menhir_run_029_spec_049 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
  
  and _menhir_run_029_spec_047 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
  
  and _menhir_run_029_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
  
  and _menhir_run_029_spec_039 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
  
  and _menhir_run_029_spec_037 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
  
  and _menhir_run_029_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_096 v in
      _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
  
  and _menhir_run_111 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp as 'stack) -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COLON (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _menhir_stack = MenhirCell0_NAME (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
          | LITERALSTRING _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_0 in
              let _v = _menhir_action_003 s in
              _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_COLON _menhir_cell0_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_NAME (_menhir_stack, n) = _menhir_stack in
      let MenhirCell1_COLON (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_pexp (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let a = _v in
      let _v = _menhir_action_069 a n p in
      _menhir_goto_functioncall _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_separated_nonempty_list_COMMA_var_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_174_spec_000 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState231 ->
          _menhir_run_174_spec_231 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState022 ->
          _menhir_run_174_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState023 ->
          _menhir_run_174_spec_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState119 ->
          _menhir_run_174_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState197 ->
          _menhir_run_174_spec_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState193 ->
          _menhir_run_174_spec_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState137 ->
          _menhir_run_174_spec_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState187 ->
          _menhir_run_174_spec_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState159 ->
          _menhir_run_174_spec_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState163 ->
          _menhir_run_174_spec_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState173 ->
          _menhir_run_174_spec_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState169 ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_174_spec_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
  
  and _menhir_run_165 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_varlist (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | NAME _v_3 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v_3 in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | LITERALSTRING _v_5 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_5 in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | INTEGER _v_7 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_7 in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState166
      | FLOAT _v_9 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_9 in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_174_spec_231 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState231
  
  and _menhir_run_174_spec_022 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN, _menhir_box_chunk) _menhir_cell1_option_parlist_ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022
  
  and _menhir_run_174_spec_023 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_SEMICOLON -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023
  
  and _menhir_run_174_spec_119 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119
  
  and _menhir_run_174_spec_197 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_list___anonymous_0_ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState197
  
  and _menhir_run_174_spec_193 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState193
  
  and _menhir_run_174_spec_137 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137
  
  and _menhir_run_174_spec_187 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist, _menhir_box_chunk) _menhir_cell1_explist -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187
  
  and _menhir_run_174_spec_159 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp _menhir_cell0_option___anonymous_2_ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState159
  
  and _menhir_run_174_spec_163 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_DO -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState163
  
  and _menhir_run_174_spec_173 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_stat -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let vs = _v in
      let _v = _menhir_action_129 vs in
      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173
  
  and _menhir_run_170 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_var -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_105 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_120 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LOCAL (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState120
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_FUNCTION (_menhir_stack, MenhirState120) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NAME _v ->
              let _menhir_stack = MenhirCell0_NAME (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | NAME _v_0 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let n = _v_0 in
                      let _v = _menhir_action_082 n in
                      _menhir_goto_option___anonymous_3_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | LPAREN ->
                  let _v = _menhir_action_081 () in
                  _menhir_goto_option___anonymous_3_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_121 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_NAME (_menhir_stack, _menhir_s, _v) in
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BREAK | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | EQUAL | FOR | FUNCTION | GOTO | IF | IN | LOCAL | LPAREN | NAME _ | REPEAT | RETURN | SEMICOLON | UNTIL | WHILE ->
          let x = _v in
          let _v = _menhir_action_100 x in
          _menhir_goto_separated_nonempty_list_COMMA_NAME_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_122 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_NAME_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState150 ->
          _menhir_run_130_spec_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState120 ->
          _menhir_run_130_spec_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState122 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_130_spec_150 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let ns = _v in
        _menhir_action_074 ns
      in
      let _menhir_stack = MenhirCell1_namelist (_menhir_stack, MenhirState150, _v) in
      match (_tok : MenhirBasics.token) with
      | IN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_130_spec_120 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let ns = _v in
        _menhir_action_074 ns
      in
      let _menhir_stack = MenhirCell1_namelist (_menhir_stack, MenhirState120, _v) in
      match (_tok : MenhirBasics.token) with
      | EQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | _ ->
              _eRR ())
      | BREAK | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | REPEAT | RETURN | SEMICOLON | UNTIL | WHILE ->
          let _v = _menhir_action_083 () in
          _menhir_goto_option___anonymous_4_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_option___anonymous_4_ : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_namelist (_menhir_stack, _, ns) = _menhir_stack in
      let MenhirCell1_LOCAL (_menhir_stack, _menhir_s) = _menhir_stack in
      let es = _v in
      let _v = _menhir_action_121 es ns in
      _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_123 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NAME (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_101 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_NAME_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_option___anonymous_3_ : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_FUNCTION _menhir_cell0_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_option___anonymous_3_ (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_112 n in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_140 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUNCTION (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState140
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_stack = MenhirCell1_NAME (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NAME _v ->
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState142
          | _ ->
              _eRR ())
      | COLON | LPAREN ->
          let x = _v in
          let _v = _menhir_action_106 x in
          _menhir_goto_separated_nonempty_list_DOT_NAME_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_DOT_NAME_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState140 ->
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_144 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FUNCTION as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_separated_nonempty_list_DOT_NAME_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_073 n in
              let x = _v in
              let _v = _menhir_action_088 x in
              _menhir_goto_option_methodcall_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LPAREN ->
          let _v = _menhir_action_087 () in
          _menhir_goto_option_methodcall_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_option_methodcall_ : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FUNCTION, _menhir_box_chunk) _menhir_cell1_separated_nonempty_list_DOT_NAME_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_option_methodcall_ (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NAME (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_107 x xs in
      _menhir_goto_separated_nonempty_list_DOT_NAME_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_150 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQUAL ->
              let _menhir_stack = MenhirCell1_NAME (_menhir_stack, MenhirState150, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TRUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_006 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | TRIPLEDOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_014 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | TILDA ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | SHARP ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | NOT ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | NIL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_005 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | NAME _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let n = _v_3 in
                  let _v = _menhir_action_124 n in
                  _menhir_run_029_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | LPAREN ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | LITERALSTRING _v_5 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let s = _v_5 in
                  let _v = _menhir_action_012 s in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | LBRACE ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | INTEGER _v_7 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_7 in
                  let _v = _menhir_action_010 i in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | HYPHEN ->
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | FUNCTION ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
              | FLOAT _v_9 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let f = _v_9 in
                  let _v = _menhir_action_011 f in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | FALSE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_007 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
              | _ ->
                  _eRR ())
          | COMMA ->
              let _menhir_stack = MenhirCell1_NAME (_menhir_stack, MenhirState150, _v) in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer
          | IN ->
              let _v =
                let x = _v in
                _menhir_action_100 x
              in
              _menhir_run_130_spec_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_160 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DOUBLECOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v in
              let _v = _menhir_action_070 n in
              let l = _v in
              let _v = _menhir_action_110 l in
              _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_163 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DO (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | SEMICOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | RETURN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | REPEAT ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState163 _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | LOCAL ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | IF ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | GOTO ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | FUNCTION ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | FOR ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | DOUBLECOLON ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | DO ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
      | BREAK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState163 _tok
      | END ->
          let _v = _menhir_action_091 () in
          let r = _v in
          let _v = _menhir_action_016 r in
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_180 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_DO -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_DO (_menhir_stack, _menhir_s) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_113 b in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_201 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | UNTIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_179 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_stat -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stat (_menhir_stack, _menhir_s, s) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_018 b s in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_205 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN, _menhir_box_chunk) _menhir_cell1_option_parlist_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_option_parlist_ (_menhir_stack, _, pl) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_065 b pl in
          _menhir_goto_funcbody _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_funcbody : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState014 ->
          _menhir_run_207 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState147 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState128 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_207 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_FUNCTION -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_FUNCTION (_menhir_stack, _menhir_s) = _menhir_stack in
      let fb = _v in
      let _v = _menhir_action_015 fb in
      _menhir_goto_base_exp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base_exp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_148 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FUNCTION, _menhir_box_chunk) _menhir_cell1_separated_nonempty_list_DOT_NAME_ _menhir_cell0_option_methodcall_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_option_methodcall_ (_menhir_stack, _l) = _menhir_stack in
      let MenhirCell1_separated_nonempty_list_DOT_NAME_ (_menhir_stack, _, n) = _menhir_stack in
      let MenhirCell1_FUNCTION (_menhir_stack, _menhir_s) = _menhir_stack in
      let fb = _v in
      let _v = _menhir_action_119 _l fb n in
      _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_129 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_FUNCTION _menhir_cell0_NAME _menhir_cell0_option___anonymous_3_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_option___anonymous_3_ (_menhir_stack, _l) = _menhir_stack in
      let MenhirCell0_NAME (_menhir_stack, n) = _menhir_stack in
      let MenhirCell1_FUNCTION (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LOCAL (_menhir_stack, _menhir_s) = _menhir_stack in
      let fb = _v in
      let _v = _menhir_action_120 _l fb n in
      _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_204 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_SEMICOLON -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_SEMICOLON (_menhir_stack, _menhir_s) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_017 b in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_198 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_list___anonymous_0_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_078 b in
      _menhir_goto_option___anonymous_1_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_option___anonymous_1_ : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_list___anonymous_0_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_list___anonymous_0_ (_menhir_stack, _, br) = _menhir_stack in
          let MenhirCell1_block (_menhir_stack, _, b1) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let b2 = _v in
          let _v = _menhir_action_116 b1 b2 br e in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_194 : type  ttv_stack. (((((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF, _menhir_box_chunk) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSEIF ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState194
      | ELSE | END ->
          let _v = _menhir_action_071 () in
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_191 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block as 'stack) -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ELSEIF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_195 : type  ttv_stack. (((((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_block (_menhir_stack, _, b) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_ELSEIF (_menhir_stack, _menhir_s) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_072 b e xs in
      _menhir_goto_list___anonymous_0_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list___anonymous_0_ : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState190 ->
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState194 ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_196 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list___anonymous_0_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | SEMICOLON ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | RETURN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | REPEAT ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState197 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | LOCAL ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | IF ->
              _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | GOTO ->
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | FUNCTION ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | FOR ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | DOUBLECOLON ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | DO ->
              _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
          | BREAK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState197 _tok
          | END ->
              let _v_3 = _menhir_action_091 () in
              let r = _v_3 in
              let _v = _menhir_action_016 r in
              _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | END ->
          let _v = _menhir_action_077 () in
          _menhir_goto_option___anonymous_1_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_190 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF, _menhir_box_chunk) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSEIF ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
      | ELSE | END ->
          let _v = _menhir_action_071 () in
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState190 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_188 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist, _menhir_box_chunk) _menhir_cell1_explist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_explist (_menhir_stack, _, es) = _menhir_stack in
          let MenhirCell1_namelist (_menhir_stack, _, ns) = _menhir_stack in
          let MenhirCell1_FOR (_menhir_stack, _menhir_s) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_118 b es ns in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_182 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp _menhir_cell0_option___anonymous_2_ -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | END ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_option___anonymous_2_ (_menhir_stack, e3) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, e2) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_NAME (_menhir_stack, _, n) = _menhir_stack in
          let MenhirCell1_FOR (_menhir_stack, _menhir_s) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_117 b e1 e2 e3 n in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_017 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_NAME (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_093 () in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | NAME _v_1 ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState018
          | _ ->
              _eRR ())
      | RPAREN ->
          let n = _v in
          let _v = _menhir_action_094 n in
          _menhir_goto_parlist _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NAME (_menhir_stack, _menhir_s, n) = _menhir_stack in
      let ps = _v in
      let _v = _menhir_action_095 n ps in
      _menhir_goto_parlist _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_parlist : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState015 ->
          _menhir_run_020_spec_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState018 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_094 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_functioncall (_menhir_stack, _menhir_s, fc) = _menhir_stack in
          let n = _v in
          let _v = _menhir_action_127 fc n in
          _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall as 'stack) -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COLON (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NAME _v ->
          let _menhir_stack = MenhirCell0_NAME (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | LITERALSTRING _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_0 in
              let _v = _menhir_action_003 s in
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_COLON _menhir_cell0_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_NAME (_menhir_stack, n) = _menhir_stack in
      let MenhirCell1_COLON (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_functioncall (_menhir_stack, _menhir_s, fc) = _menhir_stack in
      let a = _v in
      let _v = _menhir_action_068 a fc n in
      _menhir_goto_functioncall _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_172 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_var as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | LITERALSTRING _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_0 in
          let _v = _menhir_action_003 s in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LBRACKET ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | DOT ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COLON ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState172
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LITERALSTRING _v_0 ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_0 in
          let _v = _menhir_action_003 s in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LBRACE ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | DOT ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COLON ->
          let _menhir_stack = MenhirCell1_functioncall (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | AMPERSAND | AND | ASTERISK | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | DOUBLESLASH | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | HAT | HYPHEN | IF | LOCAL | LT | LTEQ | NAME _ | OR | PERCENT | PLUS | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | SLASH | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let fc = _v in
          let _v = _menhir_action_008 fc in
          _menhir_goto_base_exp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_098_spec_172 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_var, _menhir_box_chunk) _menhir_cell1_functioncall -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_098_spec_171 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_098_spec_031 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_098_spec_112 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_COLON _menhir_cell0_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_098_spec_035 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_098_spec_097 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_COLON _menhir_cell0_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_004 t in
      _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_030_spec_001 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
  
  and _menhir_run_030_spec_004 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_TILDA -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
  
  and _menhir_run_030_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
  
  and _menhir_run_030_spec_008 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_SHARP -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
  
  and _menhir_run_030_spec_222 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
  
  and _menhir_run_030_spec_010 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
  
  and _menhir_run_030_spec_215 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
  
  and _menhir_run_030_spec_212 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
  
  and _menhir_run_030_spec_210 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
  
  and _menhir_run_030_spec_012 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
  
  and _menhir_run_030_spec_202 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
  
  and _menhir_run_030_spec_191 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
  
  and _menhir_run_030_spec_185 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
  
  and _menhir_run_030_spec_166 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_varlist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
  
  and _menhir_run_030_spec_156 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
  
  and _menhir_run_030_spec_154 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
  
  and _menhir_run_030_spec_152 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
  
  and _menhir_run_030_spec_135 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
  
  and _menhir_run_030_spec_132 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
  
  and _menhir_run_030_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
  
  and _menhir_run_030_spec_106 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
  
  and _menhir_run_030_spec_104 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
  
  and _menhir_run_030_spec_092 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
  
  and _menhir_run_030_spec_088 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
  
  and _menhir_run_030_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
  
  and _menhir_run_030_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
  
  and _menhir_run_030_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
  
  and _menhir_run_030_spec_079 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
  
  and _menhir_run_030_spec_077 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
  
  and _menhir_run_030_spec_075 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
  
  and _menhir_run_030_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
  
  and _menhir_run_030_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
  
  and _menhir_run_030_spec_066 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
  
  and _menhir_run_030_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
  
  and _menhir_run_030_spec_061 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
  
  and _menhir_run_030_spec_057 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
  
  and _menhir_run_030_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
  
  and _menhir_run_030_spec_052 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
  
  and _menhir_run_030_spec_049 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
  
  and _menhir_run_030_spec_047 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
  
  and _menhir_run_030_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
  
  and _menhir_run_030_spec_043 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_base_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
  
  and _menhir_run_030_spec_039 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
  
  and _menhir_run_030_spec_037 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
  
  and _menhir_run_030_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
  
  and _menhir_run_030_spec_026 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_HYPHEN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_013 t in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
  
  and _menhir_run_209 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | EQUAL ->
          let _menhir_stack = MenhirCell1_NAME (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
          | _ ->
              _eRR ())
      | AMPERSAND | AND | ASTERISK | COLON | COMMA | DOT | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | DOUBLESLASH | GT | GTEQ | HAT | HYPHEN | LBRACE | LBRACKET | LITERALSTRING _ | LPAREN | LT | LTEQ | OR | PERCENT | PLUS | RBRACE | SEMICOLON | SLASH | TILDA | TILDAEQUAL | VERTICALBAR ->
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_212 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState212
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_args : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState171 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState031 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState178 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState172 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState035 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState097 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_exp11 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState004 ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState008 ->
          _menhir_run_226 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState012 ->
          _menhir_run_208 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState026 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState001 ->
          _menhir_run_040_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState007 ->
          _menhir_run_040_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState010 ->
          _menhir_run_040_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState222 ->
          _menhir_run_040_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState215 ->
          _menhir_run_040_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState212 ->
          _menhir_run_040_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState210 ->
          _menhir_run_040_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_040_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_040_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_040_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_040_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_040_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState154 ->
          _menhir_run_040_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_040_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState135 ->
          _menhir_run_040_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_040_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_040_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_040_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState104 ->
          _menhir_run_040_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_040_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState092 ->
          _menhir_run_040_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState088 ->
          _menhir_run_040_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_040_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState085 ->
          _menhir_run_040_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState083 ->
          _menhir_run_040_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_040_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState079 ->
          _menhir_run_040_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_040_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_040_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_040_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState069 ->
          _menhir_run_040_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState066 ->
          _menhir_run_040_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState063 ->
          _menhir_run_040_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState061 ->
          _menhir_run_040_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_040_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_040_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState052 ->
          _menhir_run_040_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState049 ->
          _menhir_run_040_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState047 ->
          _menhir_run_040_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState045 ->
          _menhir_run_040_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_040_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_229 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_TILDA -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TILDA (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_027 e in
      _menhir_goto_exp10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_exp10 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState001 ->
          _menhir_run_054_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState007 ->
          _menhir_run_054_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState010 ->
          _menhir_run_054_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState222 ->
          _menhir_run_054_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState215 ->
          _menhir_run_054_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState212 ->
          _menhir_run_054_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState210 ->
          _menhir_run_054_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_054_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_054_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_054_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_054_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_054_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState154 ->
          _menhir_run_054_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_054_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState135 ->
          _menhir_run_054_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_054_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_054_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_054_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState104 ->
          _menhir_run_054_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_054_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState092 ->
          _menhir_run_054_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState088 ->
          _menhir_run_054_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_054_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState085 ->
          _menhir_run_054_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState083 ->
          _menhir_run_054_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_054_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState079 ->
          _menhir_run_054_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_054_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_054_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_054_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState069 ->
          _menhir_run_054_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState066 ->
          _menhir_run_054_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState063 ->
          _menhir_run_054_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState061 ->
          _menhir_run_054_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_054_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_054_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState052 ->
          _menhir_run_054_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_054_spec_001 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
  
  and _menhir_run_038 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SLASH ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLESLASH ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ASTERISK ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMPERSAND | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | HYPHEN | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | PLUS | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let e = _v in
          let _v = _menhir_action_051 e in
          _menhir_goto_exp8 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_039 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp8 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp8 (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
          | _ ->
              _eRR ())
      | HYPHEN ->
          let _menhir_stack = MenhirCell1_exp8 (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | NAME _v_15 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_15 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | LITERALSTRING _v_17 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_17 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | INTEGER _v_19 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_19 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
          | FLOAT _v_21 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_21 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
          | _ ->
              _eRR ())
      | DOUBLEDOT ->
          let _menhir_stack = MenhirCell1_exp8 (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | NAME _v_27 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_27 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | LITERALSTRING _v_29 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_29 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | INTEGER _v_31 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_31 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | FLOAT _v_33 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_33 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
          | _ ->
              _eRR ())
      | AMPERSAND | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let e = _v in
          let _v = _menhir_action_048 e in
          _menhir_goto_exp7 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_exp7 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState001 ->
          _menhir_run_059_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState007 ->
          _menhir_run_059_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState010 ->
          _menhir_run_059_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState222 ->
          _menhir_run_059_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState215 ->
          _menhir_run_059_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState212 ->
          _menhir_run_059_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState210 ->
          _menhir_run_059_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_059_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_059_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_059_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_059_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_059_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState154 ->
          _menhir_run_059_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_059_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState135 ->
          _menhir_run_059_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_059_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_059_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_059_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState104 ->
          _menhir_run_059_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_059_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState092 ->
          _menhir_run_059_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState088 ->
          _menhir_run_059_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState085 ->
          _menhir_run_059_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState083 ->
          _menhir_run_059_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_059_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState079 ->
          _menhir_run_059_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_059_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_059_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_059_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState069 ->
          _menhir_run_059_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState066 ->
          _menhir_run_059_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_059_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_064 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp6 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_045 e1 e2 in
      _menhir_goto_exp6 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_exp6 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | DOUBLELT ->
          let _menhir_stack = MenhirCell1_exp6 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLEGT ->
          let _menhir_stack = MenhirCell1_exp6 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMPERSAND | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let MenhirCell1_exp5 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_042 e1 e2 in
          _menhir_goto_exp5 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_061 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp5 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AMPERSAND ->
          let _menhir_stack = MenhirCell1_exp5 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let MenhirCell1_exp4 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_040 e1 e2 in
          _menhir_goto_exp4 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_066 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp4 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TILDA ->
          let _menhir_stack = MenhirCell1_exp4 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let MenhirCell1_exp3 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_038 e1 e2 in
          _menhir_goto_exp3 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_069 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp3 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState085 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let MenhirCell1_exp2 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_036 e1 e2 in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_072 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp2 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TILDAEQUAL ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLEEQUAL ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | UNTIL | WHILE ->
          let MenhirCell1_exp1 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_022 e1 e2 in
          _menhir_goto_exp1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_075 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp1 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState092 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_093 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AND ->
          let _menhir_stack = MenhirCell1_exp1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BREAK | COMMA | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | UNTIL | WHILE ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_020 e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState001 ->
          _menhir_run_230 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_227 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_225 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_225 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_213 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_211 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_230 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | OR ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | SEMICOLON ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | RETURN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | REPEAT ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState231 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | LOCAL ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | IF ->
              _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | GOTO ->
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | FUNCTION ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | FOR ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | DOUBLECOLON ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | DO ->
              _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState231
          | BREAK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState231 _tok
          | END ->
              let _v_3 = _menhir_action_091 () in
              let r = _v_3 in
              let _v = _menhir_action_016 r in
              _menhir_run_232 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_029_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | LITERALSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | INTEGER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_227 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_097 e in
          _menhir_goto_pexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_225 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RBRACE | SEMICOLON ->
          let v = _v in
          let _v = _menhir_action_060 v in
          _menhir_goto_field _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_field : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _menhir_stack = MenhirCell1_field (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_062 () in
          _menhir_goto_field_separator _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | COMMA ->
          let _menhir_stack = MenhirCell1_field (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_061 () in
          _menhir_goto_field_separator _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RBRACE ->
          let f = _v in
          let _v = _menhir_action_063 f in
          _menhir_goto_fields _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_field_separator : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_field_separator (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_006 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | TRIPLEDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_014 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | TILDA ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | SHARP ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | NOT ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | NIL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_005 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | NAME _v_3 ->
          _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState222
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | LITERALSTRING _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_4 in
          let _v = _menhir_action_012 s in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | LBRACKET ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | LBRACE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | INTEGER _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_6 in
          let _v = _menhir_action_010 i in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | HYPHEN ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | FUNCTION ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | FLOAT _v_8 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_8 in
          let _v = _menhir_action_011 f in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_007 () in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
      | RBRACE ->
          let _v = _menhir_action_085 () in
          _menhir_run_223 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_223 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_field_separator (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_field (_menhir_stack, _menhir_s, f) = _menhir_stack in
      let fs = _v in
      let _v = _menhir_action_064 f fs in
      _menhir_goto_fields _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_fields : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState222 ->
          _menhir_run_224_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState010 ->
          _menhir_run_217 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_224_spec_222 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_086 x in
      _menhir_run_223 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_217 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let fs = _v in
      let _v = _menhir_action_123 fs in
      _menhir_goto_tableconstr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_216 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RBRACE | SEMICOLON ->
          let MenhirCell1_exp (_menhir_stack, _, k) = _menhir_stack in
          let MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let v = _v in
          let _v = _menhir_action_058 k v in
          _menhir_goto_field _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_213 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQUAL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TRUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_006 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | TRIPLEDOT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_014 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | TILDA ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | SHARP ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | NOT ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | NIL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_005 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | NAME _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let n = _v_3 in
                  let _v = _menhir_action_124 n in
                  _menhir_run_029_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | LPAREN ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | LITERALSTRING _v_5 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let s = _v_5 in
                  let _v = _menhir_action_012 s in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | LBRACE ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | INTEGER _v_7 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let i = _v_7 in
                  let _v = _menhir_action_010 i in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | HYPHEN ->
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | FUNCTION ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
              | FLOAT _v_9 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let f = _v_9 in
                  let _v = _menhir_action_011 f in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | FALSE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_007 () in
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | OR ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_211 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RBRACE | SEMICOLON ->
          let MenhirCell1_NAME (_menhir_stack, _menhir_s, n) = _menhir_stack in
          let v = _v in
          let _v = _menhir_action_059 n v in
          _menhir_goto_field _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_203 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BREAK | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | REPEAT | RETURN | SEMICOLON | UNTIL | WHILE ->
          let MenhirCell1_block (_menhir_stack, _, b) = _menhir_stack in
          let MenhirCell1_REPEAT (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_115 b e in
          _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_192 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | SEMICOLON ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | RETURN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | REPEAT ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState193 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | LOCAL ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | IF ->
              _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | GOTO ->
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | FUNCTION ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | FOR ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | DOUBLECOLON ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | DO ->
              _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
          | BREAK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState193 _tok
          | ELSE | ELSEIF | END ->
              let _v_3 = _menhir_action_091 () in
              let r = _v_3 in
              let _v = _menhir_action_016 r in
              _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState193 _tok
          | _ ->
              _eRR ())
      | OR ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack. (((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DO ->
          let e = _v in
          let _v = _menhir_action_080 e in
          _menhir_goto_option___anonymous_2_ _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_goto_option___anonymous_2_ : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_option___anonymous_2_ (_menhir_stack, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | SEMICOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | RETURN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | REPEAT ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | NAME _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v_0 in
          let _v = _menhir_action_124 n in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState159 _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | LOCAL ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | IF ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | GOTO ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | FUNCTION ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | FOR ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | DOUBLECOLON ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | DO ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | BREAK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState159 _tok
      | END ->
          let _v_3 = _menhir_action_091 () in
          let r = _v_3 in
          let _v = _menhir_action_016 r in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_155 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | OR ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
          | _ ->
              _eRR ())
      | DO ->
          let _v = _menhir_action_079 () in
          _menhir_goto_option___anonymous_2_ _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_153 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | OR ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | SEMICOLON ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | RETURN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | REPEAT ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | LOCAL ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | IF ->
              _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | GOTO ->
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | FUNCTION ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | FOR ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | DOUBLECOLON ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | DO ->
              _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | BREAK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
          | ELSE | ELSEIF | END ->
              let _v_3 = _menhir_action_091 () in
              let r = _v_3 in
              let _v = _menhir_action_016 r in
              _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
          | _ ->
              _eRR ())
      | OR ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACKET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_pexp (_menhir_stack, _menhir_s, p) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_126 e p in
          _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_103 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_006 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | TRIPLEDOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_014 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | TILDA ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | SHARP ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | NOT ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | NIL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_005 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | NAME _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_124 n in
              _menhir_run_029_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | LITERALSTRING _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v_5 in
              let _v = _menhir_action_012 s in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | LBRACE ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | INTEGER _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_7 in
              let _v = _menhir_action_010 i in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | HYPHEN ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | FUNCTION ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
          | FLOAT _v_9 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v_9 in
              let _v = _menhir_action_011 f in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_007 () in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
          | _ ->
              _eRR ())
      | BREAK | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | REPEAT | RETURN | RPAREN | SEMICOLON | UNTIL | WHILE ->
          let x = _v in
          let _v = _menhir_action_102 x in
          _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_exp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState104 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_034_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_034_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_034_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState024 ->
          _menhir_run_034_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_034_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_105 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_103 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_034_spec_185 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let es = _v in
        _menhir_action_057 es
      in
      let _menhir_stack = MenhirCell1_explist (_menhir_stack, MenhirState185, _v) in
      match (_tok : MenhirBasics.token) with
      | DO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | SEMICOLON ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | RETURN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | REPEAT ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | NAME _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_0 in
              let _v = _menhir_action_124 n in
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | LOCAL ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | IF ->
              _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | GOTO ->
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | FUNCTION ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | FOR ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | DOUBLECOLON ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | DO ->
              _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | BREAK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | END ->
              let _v_3 = _menhir_action_091 () in
              let r = _v_3 in
              let _v = _menhir_action_016 r in
              _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_034_spec_166 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_varlist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let es = _v in
        _menhir_action_057 es
      in
      let MenhirCell1_varlist (_menhir_stack, _menhir_s, vs) = _menhir_stack in
      let es = _v in
      let _v = _menhir_action_108 es vs in
      _menhir_goto_stat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_034_spec_132 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let es = _v in
        _menhir_action_057 es
      in
      let es = _v in
      let _v = _menhir_action_084 es in
      _menhir_goto_option___anonymous_4_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_034_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let es = _v in
        _menhir_action_057 es
      in
      let _menhir_stack = MenhirCell1_explist (_menhir_stack, MenhirState024, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let x = () in
          let _ = _menhir_action_076 x in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | ELSE | ELSEIF | END | EOF | UNTIL ->
          let _ = _menhir_action_075 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN, _menhir_box_chunk) _menhir_cell1_explist -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_explist (_menhir_stack, _, es) = _menhir_stack in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_098 es in
      _menhir_goto_retstat _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_034_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let es = _v in
        _menhir_action_057 es
      in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let es = _v in
          let _v = _menhir_action_002 es in
          _menhir_goto_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_090 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACKET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_functioncall (_menhir_stack, _menhir_s, fc) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_125 e fc in
          _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AND ->
          let _menhir_stack = MenhirCell1_exp1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BREAK | COMMA | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | UNTIL | WHILE ->
          let e = _v in
          let _v = _menhir_action_021 e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_074 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TILDAEQUAL ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLEEQUAL ->
          let _menhir_stack = MenhirCell1_exp2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | IF | LOCAL | LPAREN | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | UNTIL | WHILE ->
          let e = _v in
          let _v = _menhir_action_023 e in
          _menhir_goto_exp1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let MenhirCell1_exp2 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_032 e1 e2 in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let MenhirCell1_exp2 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_034 e1 e2 in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let MenhirCell1_exp2 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_031 e1 e2 in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let MenhirCell1_exp2 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_033 e1 e2 in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let MenhirCell1_exp2 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_035 e1 e2 in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_071 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTICALBAR ->
          let _menhir_stack = MenhirCell1_exp3 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | WHILE ->
          let e = _v in
          let _v = _menhir_action_037 e in
          _menhir_goto_exp2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_068 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TILDA ->
          let _menhir_stack = MenhirCell1_exp4 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let e = _v in
          let _v = _menhir_action_039 e in
          _menhir_goto_exp3 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_065 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AMPERSAND ->
          let _menhir_stack = MenhirCell1_exp5 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let e = _v in
          let _v = _menhir_action_041 e in
          _menhir_goto_exp4 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_060 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | DOUBLELT ->
          let _menhir_stack = MenhirCell1_exp6 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLEGT ->
          let _menhir_stack = MenhirCell1_exp6 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMPERSAND | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEEQUAL | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let e = _v in
          let _v = _menhir_action_043 e in
          _menhir_goto_exp5 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_062 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp6 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_044 e1 e2 in
      _menhir_goto_exp6 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_059_spec_001 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState001 _tok
  
  and _menhir_run_059_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
  
  and _menhir_run_059_spec_010 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
  
  and _menhir_run_059_spec_222 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
  
  and _menhir_run_059_spec_215 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
  
  and _menhir_run_059_spec_212 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
  
  and _menhir_run_059_spec_210 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
  
  and _menhir_run_059_spec_202 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
  
  and _menhir_run_059_spec_191 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
  
  and _menhir_run_059_spec_185 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
  
  and _menhir_run_059_spec_166 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_varlist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
  
  and _menhir_run_059_spec_156 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
  
  and _menhir_run_059_spec_154 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
  
  and _menhir_run_059_spec_152 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
  
  and _menhir_run_059_spec_135 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
  
  and _menhir_run_059_spec_132 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
  
  and _menhir_run_059_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
  
  and _menhir_run_059_spec_106 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
  
  and _menhir_run_059_spec_104 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
  
  and _menhir_run_059_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
  
  and _menhir_run_059_spec_092 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
  
  and _menhir_run_059_spec_088 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
  
  and _menhir_run_059_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
  
  and _menhir_run_059_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
  
  and _menhir_run_059_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
  
  and _menhir_run_059_spec_079 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
  
  and _menhir_run_059_spec_077 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
  
  and _menhir_run_059_spec_075 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
  
  and _menhir_run_059_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
  
  and _menhir_run_059_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
  
  and _menhir_run_059_spec_066 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
  
  and _menhir_run_059_spec_037 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_046 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
  
  and _menhir_run_058 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp8 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_047 e1 e2 in
      _menhir_goto_exp7 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_054_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState007 _tok
  
  and _menhir_run_054_spec_010 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010 _tok
  
  and _menhir_run_054_spec_222 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState222 _tok
  
  and _menhir_run_054_spec_215 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState215 _tok
  
  and _menhir_run_054_spec_212 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState212 _tok
  
  and _menhir_run_054_spec_210 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState210 _tok
  
  and _menhir_run_054_spec_202 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202 _tok
  
  and _menhir_run_054_spec_191 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState191 _tok
  
  and _menhir_run_054_spec_185 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState185 _tok
  
  and _menhir_run_054_spec_166 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_varlist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState166 _tok
  
  and _menhir_run_054_spec_156 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
  
  and _menhir_run_054_spec_154 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
  
  and _menhir_run_054_spec_152 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState152 _tok
  
  and _menhir_run_054_spec_135 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
  
  and _menhir_run_054_spec_132 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
  
  and _menhir_run_054_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
  
  and _menhir_run_054_spec_106 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
  
  and _menhir_run_054_spec_104 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
  
  and _menhir_run_054_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
  
  and _menhir_run_054_spec_092 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
  
  and _menhir_run_054_spec_088 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
  
  and _menhir_run_054_spec_037 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
  
  and _menhir_run_054_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
  
  and _menhir_run_054_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState083 _tok
  
  and _menhir_run_054_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
  
  and _menhir_run_054_spec_079 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState079 _tok
  
  and _menhir_run_054_spec_077 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState077 _tok
  
  and _menhir_run_054_spec_075 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState075 _tok
  
  and _menhir_run_054_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
  
  and _menhir_run_054_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
  
  and _menhir_run_054_spec_066 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
  
  and _menhir_run_054_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063 _tok
  
  and _menhir_run_054_spec_061 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
  
  and _menhir_run_054_spec_057 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057 _tok
  
  and _menhir_run_054_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SLASH ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLESLASH ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ASTERISK ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMPERSAND | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | HYPHEN | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | PLUS | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let MenhirCell1_exp8 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_050 e1 e2 in
          _menhir_goto_exp8 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_054_spec_052 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_056 e in
      _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SLASH ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PERCENT ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLESLASH ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ASTERISK ->
          let _menhir_stack = MenhirCell1_exp9 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMPERSAND | AND | BREAK | COMMA | DO | DOUBLECOLON | DOUBLEDOT | DOUBLEEQUAL | DOUBLEGT | DOUBLELT | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | GT | GTEQ | HYPHEN | IF | LOCAL | LPAREN | LT | LTEQ | NAME _ | OR | PLUS | RBRACE | RBRACKET | REPEAT | RETURN | RPAREN | SEMICOLON | THEN | TILDA | TILDAEQUAL | UNTIL | VERTICALBAR | WHILE ->
          let MenhirCell1_exp8 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_049 e1 e2 in
          _menhir_goto_exp8 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp9 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_052 e1 e2 in
      _menhir_goto_exp9 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_exp9 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_chunk) _menhir_state -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState185 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp9 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_054 e1 e2 in
      _menhir_goto_exp9 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp9 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_055 e1 e2 in
      _menhir_goto_exp9 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp9 (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_053 e1 e2 in
      _menhir_goto_exp9 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_226 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_SHARP -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_SHARP (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_026 e in
      _menhir_goto_exp10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_208 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_025 e in
      _menhir_goto_exp10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_115 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_HYPHEN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_HYPHEN (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_024 e in
      _menhir_goto_exp10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_base_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_base_exp (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_029 e1 e2 in
      _menhir_goto_exp11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_040_spec_001 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_WHILE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_007 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_010 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_222 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_field _menhir_cell0_field_separator -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_215 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_212 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_210 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_202 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_REPEAT, _menhir_box_chunk) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_191 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_block, _menhir_box_chunk) _menhir_cell1_ELSEIF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_185 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_166 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_varlist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_156 : type  ttv_stack. ((((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_154 : type  ttv_stack. (((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_152 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_FOR, _menhir_box_chunk) _menhir_cell1_NAME -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_135 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_132 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_LOCAL, _menhir_box_chunk) _menhir_cell1_namelist -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_106 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_pexp, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_104 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_092 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_088 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp1 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_037 : type  ttv_stack. ((ttv_stack, _menhir_box_chunk) _menhir_cell1_functioncall, _menhir_box_chunk) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_079 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_077 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_075 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp2 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp3 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp4 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_066 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp5 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_061 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp6 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_057 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_052 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp8 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_054_spec_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_049 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_047 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_040_spec_039 : type  ttv_stack. (ttv_stack, _menhir_box_chunk) _menhir_cell1_exp9 -> _ -> _ -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_028 e in
      _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_chunk =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | SEMICOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | RETURN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | REPEAT ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | NAME _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_124 n in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LOCAL ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | IF ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | GOTO ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | FUNCTION ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | FOR ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | DOUBLECOLON ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | DO ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BREAK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | EOF ->
          let _v = _menhir_action_091 () in
          let r = _v in
          let _v = _menhir_action_016 r in
          _menhir_run_235 _menhir_stack _v _tok
      | _ ->
          _eRR ()
  
end

let chunk =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_chunk v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
