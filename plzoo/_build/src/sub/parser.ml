
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | VAR of (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 14 "src/sub/parser.ml"
  )
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
    | INT of (
# 9 "src/sub/parser.mly"
       (int)
# 38 "src/sub/parser.ml"
  )
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
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState107
  | MenhirState102
  | MenhirState98
  | MenhirState97
  | MenhirState95
  | MenhirState88
  | MenhirState81
  | MenhirState78
  | MenhirState71
  | MenhirState69
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState48
  | MenhirState46
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState33
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState22
  | MenhirState19
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState9
  | MenhirState6
  | MenhirState3
  | MenhirState0

# 1 "src/sub/parser.mly"
  
  open Syntax

# 106 "src/sub/parser.ml"

let rec _menhir_goto_trecord_list : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Syntax.label * Syntax.ty) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : ((Syntax.label * Syntax.ty) list))) = _menhir_stack in
            let _v : (Syntax.ty) = 
# 109 "src/sub/parser.mly"
                               ( TRecord _2 )
# 125 "src/sub/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.label * Syntax.ty))), _, (_3 : ((Syntax.label * Syntax.ty) list))) = _menhir_stack in
        let _v : ((Syntax.label * Syntax.ty) list) = 
# 114 "src/sub/parser.mly"
                              ( _1 :: _3 )
# 141 "src/sub/parser.ml"
         in
        _menhir_goto_trecord_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.ty) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TBOOL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TINT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel_cmd)) = _v in
    Obj.magic _1

and _menhir_reduce14 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 175 "src/sub/parser.ml"
))) * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s), (_2 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 181 "src/sub/parser.ml"
    ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
    let _v : (Syntax.toplevel_cmd) = 
# 58 "src/sub/parser.mly"
                       ( Def (_2, _4) )
# 186 "src/sub/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState97 | MenhirState98 | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState97 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd list) = 
# 45 "src/sub/parser.mly"
                             ( [_1] )
# 203 "src/sub/parser.ml"
             in
            _menhir_goto_filedef _menhir_env _menhir_stack _menhir_s _v
        | LET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState97 in
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
                | EQUAL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | FALSE ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | FUN ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | IF ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | INT _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                    | LBRACE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | LET ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | LPAREN ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | MINUS ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | NOT ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102
                    | VAR _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
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
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState97 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LET ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 55 "src/sub/parser.mly"
                             ( _1 )
# 313 "src/sub/parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run81 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 328 "src/sub/parser.ml"
))) * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_record_list : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Syntax.label * Syntax.expr) list) -> 'ttv_return =
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
            let ((_menhir_stack, _menhir_s), _, (_2 : ((Syntax.label * Syntax.expr) list))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 80 "src/sub/parser.mly"
                                ( Record _2 )
# 378 "src/sub/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.label * Syntax.expr))), _, (_3 : ((Syntax.label * Syntax.expr) list))) = _menhir_stack in
        let _v : ((Syntax.label * Syntax.expr) list) = 
# 99 "src/sub/parser.mly"
                            ( _1 :: _3 )
# 394 "src/sub/parser.ml"
         in
        _menhir_goto_record_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 64 "src/sub/parser.mly"
                        ( _1 )
# 408 "src/sub/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
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
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
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
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
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
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_goto_filedef : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState98 | MenhirState95 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        let _v : (Syntax.toplevel_cmd list) = 
# 41 "src/sub/parser.mly"
                             ( _1 )
# 678 "src/sub/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 47 "src/sub/parser.mly"
                             ( _1 :: _2 )
# 689 "src/sub/parser.ml"
         in
        _menhir_goto_filedef _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_fileexpr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel_cmd list)) = _v in
    let _v : (Syntax.toplevel_cmd list) = 
# 42 "src/sub/parser.mly"
                             ( _1 )
# 703 "src/sub/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 710 "src/sub/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LPAREN ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TBOOL ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | TINT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.ty) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TARROW ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 757 "src/sub/parser.ml"
            ))), _, (_3 : (Syntax.ty))) = _menhir_stack in
            let _v : (Syntax.label * Syntax.ty) = 
# 117 "src/sub/parser.mly"
                              ( (_1, _3) )
# 762 "src/sub/parser.ml"
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
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (Syntax.label * Syntax.ty))) = _menhir_stack in
                let _v : ((Syntax.label * Syntax.ty) list) = 
# 113 "src/sub/parser.mly"
                              ( [_1] )
# 786 "src/sub/parser.ml"
                 in
                _menhir_goto_trecord_list _menhir_env _menhir_stack _menhir_s _v
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
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TARROW ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | IS | RBRACE | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.ty))), _, (_3 : (Syntax.ty))) = _menhir_stack in
            let _v : (Syntax.ty) = 
# 107 "src/sub/parser.mly"
                             ( TArrow (_1, _3) )
# 814 "src/sub/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.ty))) = _menhir_stack in
            let _v : (Syntax.ty) = 
# 110 "src/sub/parser.mly"
                             ( _2 )
# 836 "src/sub/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v
        | TARROW ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | LPAREN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | TBOOL ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | TINT ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | TARROW ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
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
        | IS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
        | TARROW ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | AND | COMMA | DIVIDE | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON2 | THEN | TIMES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 62 "src/sub/parser.mly"
                        ( _1 )
# 965 "src/sub/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | LET | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), (_2 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 1003 "src/sub/parser.ml"
            ))), (_4 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 1007 "src/sub/parser.ml"
            ))), _, (_6 : (Syntax.ty))), _, (_9 : (Syntax.ty))), _, (_11 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 67 "src/sub/parser.mly"
                                                        ( Fun (_2, _4, _6, _9, _11) )
# 1012 "src/sub/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 87 "src/sub/parser.mly"
                    ( Times (_1, _3) )
# 1028 "src/sub/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 85 "src/sub/parser.mly"
                   ( Plus (_1, _3) )
# 1046 "src/sub/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 88 "src/sub/parser.mly"
                     ( Divide (_1, _3) )
# 1062 "src/sub/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | LET | OR | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 94 "src/sub/parser.mly"
                        ( Or (_1, _3) )
# 1090 "src/sub/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 86 "src/sub/parser.mly"
                    ( Minus (_1, _3) )
# 1114 "src/sub/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | LET | OR | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 92 "src/sub/parser.mly"
                        ( Less (_1, _3) )
# 1142 "src/sub/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
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
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | LET | OR | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 91 "src/sub/parser.mly"
                        ( Equal (_1, _3) )
# 1170 "src/sub/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | LET | OR | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 93 "src/sub/parser.mly"
                        ( And (_1, _3) )
# 1202 "src/sub/parser.ml"
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
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | LET | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.expr))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 66 "src/sub/parser.mly"
                                       ( If (_2, _4, _6) )
# 1354 "src/sub/parser.ml"
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
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 1389 "src/sub/parser.ml"
            ))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.label * Syntax.expr) = 
# 102 "src/sub/parser.mly"
                            ( (_1, _3) )
# 1394 "src/sub/parser.ml"
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
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (Syntax.label * Syntax.expr))) = _menhir_stack in
                let _v : ((Syntax.label * Syntax.expr) list) = 
# 98 "src/sub/parser.mly"
                            ( [_1] )
# 1418 "src/sub/parser.ml"
                 in
                _menhir_goto_record_list _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | ELSE | EOF | IN | LET | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (_2 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 1488 "src/sub/parser.ml"
            ))), _, (_4 : (Syntax.expr))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 65 "src/sub/parser.mly"
                               ( Let (_2, _4, _6) )
# 1493 "src/sub/parser.ml"
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
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 78 "src/sub/parser.mly"
                          ( _2 )
# 1529 "src/sub/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | LET | OR | RBRACE | RPAREN | SEMICOLON2 | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 95 "src/sub/parser.mly"
                     ( Not _2 )
# 1563 "src/sub/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EOF | LET | SEMICOLON2 ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 | MenhirState95 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd list) = 
# 50 "src/sub/parser.mly"
                             ( [Expr _1] )
# 1619 "src/sub/parser.ml"
             in
            _menhir_goto_fileexpr _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LET ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EOF | LET | SEMICOLON2 ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 54 "src/sub/parser.mly"
                             ( Expr _1 )
# 1718 "src/sub/parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 1755 "src/sub/parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 81 "src/sub/parser.mly"
                                ( Project (_1, _3) )
# 1761 "src/sub/parser.ml"
         in
        _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
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
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 51 "src/sub/parser.mly"
                             ( Expr _1 :: _3 )
# 1787 "src/sub/parser.ml"
         in
        _menhir_goto_fileexpr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))), _) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 46 "src/sub/parser.mly"
                             ( _1 :: _3 )
# 1798 "src/sub/parser.ml"
         in
        _menhir_goto_filedef _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_arith : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 63 "src/sub/parser.mly"
                        ( _1 )
# 1812 "src/sub/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 1819 "src/sub/parser.ml"
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
        | FALSE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState12
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
        | MINUS ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NOT ->
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
            | FALSE ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState9
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
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NOT ->
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

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.ty) = 
# 106 "src/sub/parser.mly"
                       ( TInt )
# 1927 "src/sub/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.ty) = 
# 105 "src/sub/parser.mly"
                 ( TBool )
# 1938 "src/sub/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LPAREN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | TBOOL ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | TINT ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState23 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Syntax.ty) = 
# 108 "src/sub/parser.mly"
                             ( TRecord [] )
# 1976 "src/sub/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v
    | VAR _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_goto_non_app : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState107 | MenhirState102 | MenhirState98 | MenhirState95 | MenhirState0 | MenhirState88 | MenhirState3 | MenhirState6 | MenhirState81 | MenhirState9 | MenhirState12 | MenhirState71 | MenhirState69 | MenhirState14 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState48 | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | INT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | LBRACE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PERIOD ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | AND | COMMA | DIVIDE | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON2 | THEN | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 61 "src/sub/parser.mly"
                        ( _1 )
# 2015 "src/sub/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | AND | COMMA | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LET | LPAREN | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON2 | THEN | TIMES | TRUE | VAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 71 "src/sub/parser.mly"
                        ( App (_1, _2) )
# 2035 "src/sub/parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | AND | COMMA | DIVIDE | ELSE | EOF | EQUAL | FALSE | IN | INT _ | LBRACE | LESS | LET | LPAREN | MINUS | OR | PLUS | RBRACE | RPAREN | SEMICOLON2 | THEN | TIMES | TRUE | VAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 70 "src/sub/parser.mly"
                        ( App (_1, _2) )
# 2055 "src/sub/parser.ml"
             in
            _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
    | _ ->
        _menhir_fail ()

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel_cmd list) = 
# 40 "src/sub/parser.mly"
                             ( [] )
# 2071 "src/sub/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
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
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
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
    | MenhirState33 ->
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
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
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
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 2228 "src/sub/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 8 "src/sub/parser.mly"
       (Syntax.name)
# 2236 "src/sub/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 74 "src/sub/parser.mly"
                    ( Var _1 )
# 2241 "src/sub/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 75 "src/sub/parser.mly"
                           ( Bool true )
# 2252 "src/sub/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 9 "src/sub/parser.mly"
       (int)
# 2302 "src/sub/parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 84 "src/sub/parser.mly"
                        ( Int (-_2) )
# 2308 "src/sub/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState6
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
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | INT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | LBRACE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | MINUS ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
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
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState10 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 79 "src/sub/parser.mly"
                                ( Record [] )
# 2422 "src/sub/parser.ml"
         in
        _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
    | VAR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "src/sub/parser.mly"
       (int)
# 2435 "src/sub/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 9 "src/sub/parser.mly"
       (int)
# 2443 "src/sub/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 77 "src/sub/parser.mly"
                           ( Int _1 )
# 2448 "src/sub/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
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
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
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
        | LPAREN ->
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
                | COLON ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LBRACE ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | LPAREN ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | TBOOL ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | TINT ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 76 "src/sub/parser.mly"
                           ( Bool false )
# 2557 "src/sub/parser.ml"
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
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
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
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | INT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | LBRACE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | LET ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | MINUS ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)

# 119 "src/sub/parser.mly"
  

# 2656 "src/sub/parser.ml"

# 269 "<standard.mly>"
  

# 2661 "src/sub/parser.ml"
