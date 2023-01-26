
(* The type of tokens. *)

type token = 
  | VAR of (Syntax.name)
  | TRUE
  | TINT
  | TIMES
  | THEN
  | TBOOL
  | TARROW
  | SEMISEMI
  | RPAREN
  | PLUS
  | MINUS
  | LPAREN
  | LET
  | LESS
  | IS
  | INT of (int)
  | IF
  | FUN
  | FALSE
  | EQUAL
  | EOF
  | ELSE
  | DIVIDE
  | COLON

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command list)
