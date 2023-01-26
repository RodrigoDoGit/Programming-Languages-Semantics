
(* The type of tokens. *)

type token = 
  | VAR of (Syntax.name)
  | TRUE
  | TINT
  | TIMES
  | THUNK
  | THEN
  | TFREE
  | TFORGET
  | TBOOL
  | TARROW
  | SEMISEMI
  | RPAREN
  | RETURN
  | REC
  | PLUS
  | MINUS
  | LPAREN
  | LET
  | LESS
  | IS
  | INT of (int)
  | IN
  | IF
  | FUN
  | FORCE
  | FALSE
  | EQUAL
  | EOF
  | ELSE
  | DO
  | DARROW
  | COLON
  | ASSIGN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel list)
