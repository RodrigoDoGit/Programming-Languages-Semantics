
(* The type of tokens. *)

type token = 
  | WITH
  | VAR of (Syntax.name)
  | TRUE
  | TIMES
  | THEN
  | SND
  | SEMICOLON2
  | RPAREN
  | REC
  | RBRACK
  | PLUS
  | MOD
  | MINUS
  | MATCH
  | LPAREN
  | LET
  | LESS
  | LBRACK
  | IS
  | INT of (int)
  | IF
  | FUN
  | FST
  | FALSE
  | EQUAL
  | EOF
  | ELSE
  | DIVIDE
  | DARROW
  | CONS
  | COMMA
  | ALTERNATIVE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd list)
