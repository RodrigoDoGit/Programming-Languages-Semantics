
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | WITH
    | VAR of (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 15 "src/poly/parser.ml"
  )
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
    | INT of (
# 6 "src/poly/parser.mly"
       (int)
# 37 "src/poly/parser.ml"
  )
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
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState85
  | MenhirState80
  | MenhirState79
  | MenhirState77
  | MenhirState70
  | MenhirState64
  | MenhirState59
  | MenhirState53
  | MenhirState51
  | MenhirState48
  | MenhirState46
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState27
  | MenhirState25
  | MenhirState22
  | MenhirState18
  | MenhirState17
  | MenhirState14
  | MenhirState10
  | MenhirState7
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "src/poly/parser.mly"
  
  open Syntax

# 98 "src/poly/parser.ml"

let rec _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel_cmd)) = _v in
    Obj.magic _1

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 67 "src/poly/parser.mly"
                        ( _1 )
# 115 "src/poly/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_lettop : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState80 | MenhirState77 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        let _v : (Syntax.toplevel_cmd list) = 
# 45 "src/poly/parser.mly"
                             ( _1 )
# 417 "src/poly/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 50 "src/poly/parser.mly"
                             ( _1 :: _2 )
# 428 "src/poly/parser.ml"
         in
        _menhir_goto_lettop _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_exprtop : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel_cmd list)) = _v in
    let _v : (Syntax.toplevel_cmd list) = 
# 46 "src/poly/parser.mly"
                             ( _1 )
# 442 "src/poly/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 476 "src/poly/parser.ml"
            ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 70 "src/poly/parser.mly"
                         ( Fun (_2, _4) )
# 481 "src/poly/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 94 "src/poly/parser.mly"
                    ( Times (_1, _3) )
# 503 "src/poly/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 68 "src/poly/parser.mly"
                        ( Cons (_1, _3) )
# 525 "src/poly/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | EQUAL | LESS | LET | MINUS | PLUS | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 92 "src/poly/parser.mly"
                   ( Plus (_1, _3) )
# 553 "src/poly/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 96 "src/poly/parser.mly"
                  ( Mod (_1, _3) )
# 575 "src/poly/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 95 "src/poly/parser.mly"
                     ( Divide (_1, _3) )
# 597 "src/poly/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | EQUAL | LESS | LET | MINUS | PLUS | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 93 "src/poly/parser.mly"
                    ( Minus (_1, _3) )
# 625 "src/poly/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 102 "src/poly/parser.mly"
                    ( Less (_1, _3) )
# 657 "src/poly/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 101 "src/poly/parser.mly"
                    ( Equal (_1, _3) )
# 689 "src/poly/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.expr))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 69 "src/poly/parser.mly"
                                ( If (_2, _4, _6) )
# 849 "src/poly/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ALTERNATIVE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VAR _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CONS ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | VAR _v ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | DARROW ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | FALSE ->
                                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | FST ->
                                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | FUN ->
                                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | IF ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | INT _v ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
                            | LBRACK ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | LPAREN ->
                                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | MATCH ->
                                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | MINUS ->
                                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | REC ->
                                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | SND ->
                                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | TRUE ->
                                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                            | VAR _v ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, _), _, (_6 : (Syntax.expr))), (_8 : (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 1030 "src/poly/parser.ml"
            ))), (_10 : (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 1034 "src/poly/parser.ml"
            ))), _, (_12 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 73 "src/poly/parser.mly"
      ( Match (_2, _6, _8, _10, _12) )
# 1039 "src/poly/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 1074 "src/poly/parser.ml"
            ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 71 "src/poly/parser.mly"
                        ( Rec (_2, _4) )
# 1079 "src/poly/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 87 "src/poly/parser.mly"
                          ( _2 )
# 1150 "src/poly/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 88 "src/poly/parser.mly"
                                  ( Pair (_2, _4) )
# 1188 "src/poly/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | EOF | LET | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 1225 "src/poly/parser.ml"
            ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 61 "src/poly/parser.mly"
                        ( Def (_2, _4) )
# 1230 "src/poly/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState0 | MenhirState79 | MenhirState80 | MenhirState77 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState79 in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
                    let _v : (Syntax.toplevel_cmd list) = 
# 49 "src/poly/parser.mly"
                             ( [_1] )
# 1247 "src/poly/parser.ml"
                     in
                    _menhir_goto_lettop _menhir_env _menhir_stack _menhir_s _v
                | LET ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState79
                | SEMICOLON2 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState79 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | EOF ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | FALSE ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | FST ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | FUN ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | IF ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | INT _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                    | LBRACK ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | LET ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | LPAREN ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | MATCH ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | MINUS ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | REC ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | SND ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | VAR _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
            | MenhirState85 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
                    let _v : (Syntax.toplevel_cmd) = 
# 59 "src/poly/parser.mly"
                             ( _1 )
# 1309 "src/poly/parser.ml"
                     in
                    _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 | MenhirState77 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd list) = 
# 54 "src/poly/parser.mly"
                             ( [Expr _1] )
# 1342 "src/poly/parser.ml"
             in
            _menhir_goto_exprtop _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 58 "src/poly/parser.mly"
                             ( Expr _1 )
# 1418 "src/poly/parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_app : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | ALTERNATIVE | COMMA | CONS | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 65 "src/poly/parser.mly"
                        ( _1 )
# 1467 "src/poly/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        Obj.magic _1
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 55 "src/poly/parser.mly"
                             ( Expr _1 :: _3 )
# 1491 "src/poly/parser.ml"
         in
        _menhir_goto_exprtop _menhir_env _menhir_stack _menhir_s _v
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))), _) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 51 "src/poly/parser.mly"
                             ( _1 :: _3 )
# 1502 "src/poly/parser.ml"
         in
        _menhir_goto_lettop _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_arith : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 66 "src/poly/parser.mly"
                        ( _1 )
# 1516 "src/poly/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_non_app : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 77 "src/poly/parser.mly"
                        ( Fst _2 )
# 1536 "src/poly/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | MenhirState85 | MenhirState80 | MenhirState77 | MenhirState0 | MenhirState70 | MenhirState64 | MenhirState4 | MenhirState7 | MenhirState59 | MenhirState53 | MenhirState10 | MenhirState48 | MenhirState46 | MenhirState14 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState27 | MenhirState25 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | INT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | LBRACK ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | ALTERNATIVE | COMMA | CONS | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 64 "src/poly/parser.mly"
                        ( _1 )
# 1562 "src/poly/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 79 "src/poly/parser.mly"
                        ( Apply (_1, _2) )
# 1576 "src/poly/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 76 "src/poly/parser.mly"
                        ( Apply (_1, _2) )
# 1586 "src/poly/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 78 "src/poly/parser.mly"
                        ( Snd _2 )
# 1596 "src/poly/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel_cmd list) = 
# 44 "src/poly/parser.mly"
                             ( [] )
# 1608 "src/poly/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 1733 "src/poly/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 5 "src/poly/parser.mly"
       (Syntax.name)
# 1741 "src/poly/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 82 "src/poly/parser.mly"
                    ( Var _1 )
# 1746 "src/poly/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 83 "src/poly/parser.mly"
                           ( Bool true )
# 1757 "src/poly/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (
# 6 "src/poly/parser.mly"
       (int)
# 1857 "src/poly/parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 91 "src/poly/parser.mly"
                        ( Int (-_2) )
# 1863 "src/poly/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (unit) = 
# 98 "src/poly/parser.mly"
                        ( () )
# 2021 "src/poly/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState85 | MenhirState80 | MenhirState77 | MenhirState0 | MenhirState70 | MenhirState3 | MenhirState64 | MenhirState4 | MenhirState7 | MenhirState59 | MenhirState53 | MenhirState10 | MenhirState48 | MenhirState46 | MenhirState14 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState27 | MenhirState25 | MenhirState17 | MenhirState22 | MenhirState18 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 86 "src/poly/parser.mly"
                                  ( Nil )
# 2032 "src/poly/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | MenhirState51 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | FST ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | FUN ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | IF ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | INT _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
                | LBRACK ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | MATCH ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | MINUS ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | REC ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | SND ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "src/poly/parser.mly"
       (int)
# 2093 "src/poly/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 6 "src/poly/parser.mly"
       (int)
# 2101 "src/poly/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 85 "src/poly/parser.mly"
                           ( Int _1 )
# 2106 "src/poly/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | FST ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | LBRACK ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | MATCH ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 84 "src/poly/parser.mly"
                           ( Bool false )
# 2237 "src/poly/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd list) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

and toplevel : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | FST ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LBRACK ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LET ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | MATCH ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)

# 104 "src/poly/parser.mly"
  

# 2348 "src/poly/parser.ml"

# 269 "<standard.mly>"
  

# 2353 "src/poly/parser.ml"
