
(* The type of tokens. *)

type token = 
  | VAR of (Syntax.name)
  | TRUE
  | TINT
  | TIMES
  | THEN
  | TBOOL
  | TARROW
  | SEMICOLON2
  | RPAREN
  | RBRACE
  | PLUS
  | PERIOD
  | OR
  | NOT
  | MINUS
  | LPAREN
  | LET
  | LESS
  | LBRACE
  | IS
  | INT of (int)
  | IN
  | IF
  | FUN
  | FALSE
  | EQUAL
  | EOF
  | ELSE
  | DIVIDE
  | COMMA
  | COLON
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd list)
