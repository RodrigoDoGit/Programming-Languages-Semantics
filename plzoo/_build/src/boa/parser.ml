
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | WITH
    | VAR of (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 15 "src/boa/parser.ml"
  )
    | UNEQUAL
    | TRUE
    | TIMES
    | THIS
    | THEN
    | SKIP
    | SEMICOLON2
    | SEMICOLON
    | RPAREN
    | REMAINDER
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
    | INT of (
# 9 "src/boa/parser.mly"
       (int)
# 40 "src/boa/parser.ml"
  )
    | IN
    | IF
    | FUN
    | FALSE
    | EQUAL
    | EOF
    | ELSE
    | DIVIDE
    | COPY
    | COMMA
    | ASSIGN
    | ARROW
    | AND
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState86
  | MenhirState83
  | MenhirState77
  | MenhirState70
  | MenhirState67
  | MenhirState61
  | MenhirState59
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState30
  | MenhirState28
  | MenhirState25
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState17
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState9
  | MenhirState6
  | MenhirState5
  | MenhirState0

# 1 "src/boa/parser.mly"
  
  open Syntax

# 108 "src/boa/parser.ml"

let rec _menhir_goto_option_SEMICOLON2_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))), _) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd) = 
# 50 "src/boa/parser.mly"
                             ( _1 )
# 124 "src/boa/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd)) = _v in
        Obj.magic _1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_command : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd list) = 
# 47 "src/boa/parser.mly"
                             ( [_1] )
# 153 "src/boa/parser.ml"
             in
            _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COPY ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | EOF ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LET ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | THIS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let x = () in
            let _v : (unit option) = 
# 116 "<standard.mly>"
    ( Some x )
# 212 "src/boa/parser.ml"
             in
            _menhir_goto_option_SEMICOLON2_ _menhir_env _menhir_stack _v
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) = 
# 114 "<standard.mly>"
    ( None )
# 220 "src/boa/parser.ml"
             in
            _menhir_goto_option_SEMICOLON2_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run70 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 235 "src/boa/parser.ml"
))) * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 60 "src/boa/parser.mly"
                        ( _1 )
# 280 "src/boa/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_goto_arith : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 59 "src/boa/parser.mly"
                        ( _1 )
# 508 "src/boa/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_goto_fields : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Syntax.name * Syntax.expr) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : ((Syntax.name * Syntax.expr) list))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 80 "src/boa/parser.mly"
                                  ( Object _2 )
# 709 "src/boa/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.name * Syntax.expr))), _, (_3 : ((Syntax.name * Syntax.expr) list))) = _menhir_stack in
        let _v : ((Syntax.name * Syntax.expr) list) = 
# 105 "src/boa/parser.mly"
                                    ( _1 :: _3 )
# 725 "src/boa/parser.ml"
         in
        _menhir_goto_fields _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_app : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | AND | COMMA | DIVIDE | ELSE | EOF | EQUAL | IN | LESS | MINUS | OR | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | THEN | TIMES | UNEQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 58 "src/boa/parser.mly"
                        ( _1 )
# 767 "src/boa/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQUAL | IN | LESS | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN | UNEQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _), (_3 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 799 "src/boa/parser.ml"
            ))), _, (_5 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 64 "src/boa/parser.mly"
                                       ( Assign (_1, _3, _5) )
# 804 "src/boa/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 87 "src/boa/parser.mly"
                     ( ArithOp (Times, _1, _3) )
# 820 "src/boa/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 89 "src/boa/parser.mly"
                        ( ArithOp (Remainder, _1, _3) )
# 830 "src/boa/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQUAL | IN | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN | UNEQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 85 "src/boa/parser.mly"
                     ( ArithOp (Plus, _1, _3) )
# 850 "src/boa/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 88 "src/boa/parser.mly"
                     ( ArithOp (Divide, _1, _3) )
# 866 "src/boa/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQUAL | IN | LESS | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN | UNEQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 86 "src/boa/parser.mly"
                    ( ArithOp (Minus, _1, _3) )
# 886 "src/boa/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 927 "src/boa/parser.ml"
            ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 62 "src/boa/parser.mly"
                                       ( Fun (_2, _4) )
# 932 "src/boa/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 95 "src/boa/parser.mly"
                        ( CmpOp (Unequal, _1, _3) )
# 962 "src/boa/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
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
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 65 "src/boa/parser.mly"
                                       ( Seq (_1, _3) )
# 1004 "src/boa/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 97 "src/boa/parser.mly"
                        ( BoolOp (Or, _1, _3) )
# 1042 "src/boa/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 93 "src/boa/parser.mly"
                        ( CmpOp (Less, _1, _3) )
# 1072 "src/boa/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 94 "src/boa/parser.mly"
                        ( CmpOp (Equal, _1, _3) )
# 1102 "src/boa/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 96 "src/boa/parser.mly"
                        ( BoolOp (And, _1, _3) )
# 1138 "src/boa/parser.ml"
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
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COPY ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | THIS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
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
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COPY ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | THIS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.expr))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 61 "src/boa/parser.mly"
                                       ( If (_2, _4, _6) )
# 1314 "src/boa/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 1355 "src/boa/parser.ml"
            ))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.name * Syntax.expr) = 
# 100 "src/boa/parser.mly"
                                ( (_1, _3) )
# 1360 "src/boa/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | VAR _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
                | RBRACE ->
                    _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (Syntax.name * Syntax.expr))) = _menhir_stack in
                let _v : ((Syntax.name * Syntax.expr) list) = 
# 104 "src/boa/parser.mly"
                                    ( [_1] )
# 1386 "src/boa/parser.ml"
                 in
                _menhir_goto_fields _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
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
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (_2 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 1468 "src/boa/parser.ml"
            ))), _, (_4 : (Syntax.expr))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 63 "src/boa/parser.mly"
                                       ( Let (_2, _4, _6) )
# 1473 "src/boa/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 78 "src/boa/parser.mly"
                          ( _2 )
# 1511 "src/boa/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | OR | RBRACE | RPAREN | SEMICOLON | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 92 "src/boa/parser.mly"
                        ( Not _2 )
# 1553 "src/boa/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | EOF | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 1596 "src/boa/parser.ml"
            ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 54 "src/boa/parser.mly"
                         ( Def (_2, _4) )
# 1601 "src/boa/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState86 | MenhirState83 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | UNEQUAL ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | EOF | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 53 "src/boa/parser.mly"
                         ( Expr _1 )
# 1643 "src/boa/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce40 : _menhir_env -> (('ttv_tail * _menhir_state * (Syntax.expr)) * _menhir_state) * (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 1658 "src/boa/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _), (_3 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 1664 "src/boa/parser.ml"
    ))) = _menhir_stack in
    let _v : (Syntax.expr) = 
# 79 "src/boa/parser.mly"
                                  ( Project (_1, _3) )
# 1669 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        Obj.magic _1
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 46 "src/boa/parser.mly"
                             ( _1 :: _3 )
# 1736 "src/boa/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Syntax.name * Syntax.expr) list) = 
# 103 "src/boa/parser.mly"
                                    ( [] )
# 1747 "src/boa/parser.ml"
     in
    _menhir_goto_fields _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 1754 "src/boa/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COPY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | FUN ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | IF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | INT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | LBRACE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NOT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | THIS ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            | COPY ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | THIS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
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

and _menhir_goto_non_app : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | WITH ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | AND | COMMA | COPY | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LPAREN | MINUS | OR | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | SKIP | THEN | THIS | TIMES | TRUE | UNEQUAL | VAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 81 "src/boa/parser.mly"
                                  ( Copy _2 )
# 1882 "src/boa/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | AND | COMMA | COPY | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LPAREN | MINUS | OR | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | SKIP | THEN | THIS | TIMES | TRUE | UNEQUAL | VAR _ | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 82 "src/boa/parser.mly"
                                  ( With (_1, _3) )
# 1902 "src/boa/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | MenhirState86 | MenhirState83 | MenhirState0 | MenhirState77 | MenhirState5 | MenhirState6 | MenhirState70 | MenhirState9 | MenhirState12 | MenhirState61 | MenhirState59 | MenhirState14 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState30 | MenhirState28 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COPY ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | FALSE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | INT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | LBRACE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState25 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VAR _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ASSIGN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | COPY ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | FALSE ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | FUN ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | IF ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | INT _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
                    | LBRACE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | LET ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | LPAREN ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | NOT ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | SKIP ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | THIS ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                    | VAR _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
                | AND | COMMA | COPY | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LPAREN | MINUS | OR | PERIOD | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | SKIP | THEN | THIS | TIMES | TRUE | UNEQUAL | VAR _ | WITH ->
                    _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack)
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | THIS ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | WITH ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | AND | COMMA | DIVIDE | ELSE | EOF | EQUAL | IN | LESS | MINUS | OR | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | THEN | TIMES | UNEQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 57 "src/boa/parser.mly"
                        ( _1 )
# 2002 "src/boa/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | WITH ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | AND | COMMA | COPY | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LPAREN | MINUS | OR | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | SKIP | THEN | THIS | TIMES | TRUE | UNEQUAL | VAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 68 "src/boa/parser.mly"
                        ( App (_1, _2) )
# 2024 "src/boa/parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | WITH ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | AND | COMMA | COPY | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LPAREN | MINUS | OR | PLUS | RBRACE | REMAINDER | RPAREN | SEMICOLON | SEMICOLON2 | SKIP | THEN | THIS | TIMES | TRUE | UNEQUAL | VAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 69 "src/boa/parser.mly"
                        ( App (_1, _2) )
# 2046 "src/boa/parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | _ ->
        _menhir_fail ()

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel_cmd list) = 
# 45 "src/boa/parser.mly"
                             ( [] )
# 2062 "src/boa/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
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
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
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
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 2211 "src/boa/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 7 "src/boa/parser.mly"
       (Syntax.name)
# 2219 "src/boa/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 72 "src/boa/parser.mly"
                    ( Var _1 )
# 2224 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 74 "src/boa/parser.mly"
                           ( Bool true )
# 2235 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 73 "src/boa/parser.mly"
                                  ( This )
# 2246 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 77 "src/boa/parser.mly"
                                  ( Skip )
# 2257 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            | COPY ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | THIS ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
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

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | RBRACE ->
        _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "src/boa/parser.mly"
       (int)
# 2413 "src/boa/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 9 "src/boa/parser.mly"
       (int)
# 2421 "src/boa/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 76 "src/boa/parser.mly"
                           ( Int _1 )
# 2426 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | THIS ->
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
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COPY ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | FALSE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | THIS ->
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
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 75 "src/boa/parser.mly"
                           ( Bool false )
# 2534 "src/boa/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

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
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | THIS ->
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
    | COPY ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | FALSE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LET ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | THIS ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)

# 107 "src/boa/parser.mly"
  

# 2670 "src/boa/parser.ml"

# 269 "<standard.mly>"
  

# 2675 "src/boa/parser.ml"
