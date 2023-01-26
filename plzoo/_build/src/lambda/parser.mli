
(* The type of tokens. *)

type token = 
  | SHALLOW
  | SEMI
  | RPAREN
  | QUIT
  | PERIOD
  | NAME of (string)
  | LPAREN
  | LAZY
  | LAMBDA
  | HELP
  | EOF
  | EAGER
  | DEEP
  | CONTEXT
  | CONSTANT
  | COLONEQ

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Input.toplevel list)

val commandline: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Input.toplevel)
