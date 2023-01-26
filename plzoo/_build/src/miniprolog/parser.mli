
(* The type of tokens. *)

type token = 
  | VAR of (string)
  | TRUE
  | RPAREN
  | PERIOD
  | LPAREN
  | GOAL
  | FROM
  | EOF
  | CONST of (string)
  | COMMA

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd list)

val expr: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd)
