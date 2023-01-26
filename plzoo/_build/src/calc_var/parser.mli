
(* The type of tokens. *)

type token = 
  | VARIABLE of (string)
  | UMINUS
  | TIMES
  | RPAREN
  | PLUS
  | NUMERAL of (int)
  | MINUS
  | LPAREN
  | EQUAL
  | EOF
  | DIVIDE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command)
