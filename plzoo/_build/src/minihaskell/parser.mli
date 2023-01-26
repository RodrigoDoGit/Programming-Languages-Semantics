
(* The type of tokens. *)

type token = 
  | WITH
  | VAR of (Syntax.name)
  | TRUE
  | TLIST
  | TINT
  | TIMES
  | THEN
  | TBOOL
  | TARROW
  | SND
  | SEMICOLON2
  | RPAREN
  | REC
  | RBRACK
  | QUIT
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
  | COLON
  | ALTERNATIVE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd list)
