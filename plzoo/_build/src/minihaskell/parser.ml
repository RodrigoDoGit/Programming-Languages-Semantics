
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | WITH
    | VAR of (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 15 "src/minihaskell/parser.ml"
  )
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
    | INT of (
# 7 "src/minihaskell/parser.mly"
       (int)
# 42 "src/minihaskell/parser.ml"
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
    | COLON
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
  | MenhirState109
  | MenhirState103
  | MenhirState99
  | MenhirState98
  | MenhirState96
  | MenhirState89
  | MenhirState82
  | MenhirState77
  | MenhirState71
  | MenhirState69
  | MenhirState66
  | MenhirState64
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState45
  | MenhirState43
  | MenhirState40
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState30
  | MenhirState26
  | MenhirState25
  | MenhirState22
  | MenhirState16
  | MenhirState12
  | MenhirState10
  | MenhirState7
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "src/minihaskell/parser.mly"
  
  open Syntax

# 111 "src/minihaskell/parser.ml"

let rec _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.htype) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.htype))), _, (_3 : (Syntax.htype))) = _menhir_stack in
        let _v : (Syntax.htype) = 
# 117 "src/minihaskell/parser.mly"
                             ( TArrow (_1, _3) )
# 124 "src/minihaskell/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.htype))) = _menhir_stack in
            let _v : (Syntax.htype) = 
# 131 "src/minihaskell/parser.mly"
                             ( _2 )
# 140 "src/minihaskell/parser.ml"
             in
            _menhir_goto_ty_simple _menhir_env _menhir_stack _menhir_s _v
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
        | IS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACK ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.htype))) = _menhir_stack in
            let _v : (Syntax.htype) = 
# 109 "src/minihaskell/parser.mly"
                        ( _2 )
# 208 "src/minihaskell/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState109 | MenhirState103 | MenhirState99 | MenhirState96 | MenhirState0 | MenhirState89 | MenhirState3 | MenhirState82 | MenhirState4 | MenhirState22 | MenhirState77 | MenhirState71 | MenhirState25 | MenhirState66 | MenhirState64 | MenhirState30 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState45 | MenhirState43 | MenhirState35 | MenhirState40 | MenhirState36 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (_1 : (Syntax.htype))) = _menhir_stack in
                let _v : (Syntax.expr) = 
# 97 "src/minihaskell/parser.mly"
                                  ( Nil _1 )
# 219 "src/minihaskell/parser.ml"
                 in
                _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
            | MenhirState69 ->
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
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | FST ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | FUN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | IF ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | INT _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
                    | LBRACK ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | LPAREN ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | MATCH ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | MINUS ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | REC ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | SND ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | VAR _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
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
    | MenhirState33 ->
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
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ty_times : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.htype) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TARROW ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TBOOL ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | TIMES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TBOOL ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12)
    | DARROW | IS | RBRACK | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.htype))) = _menhir_stack in
        let _v : (Syntax.htype) = 
# 116 "src/minihaskell/parser.mly"
                             ( _1 )
# 368 "src/minihaskell/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.htype) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (_1 : (Syntax.htype))) = _menhir_stack in
    let _v : (Syntax.htype) = 
# 126 "src/minihaskell/parser.mly"
                             ( TList _1 )
# 386 "src/minihaskell/parser.ml"
     in
    _menhir_goto_ty_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ty_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.htype) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TLIST ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | DARROW | IS | RBRACK | RPAREN | TARROW | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.htype))), _, (_3 : (Syntax.htype))) = _menhir_stack in
            let _v : (Syntax.htype) = 
# 121 "src/minihaskell/parser.mly"
                             ( TTimes (_1, _3) )
# 407 "src/minihaskell/parser.ml"
             in
            _menhir_goto_ty_times _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 | MenhirState26 | MenhirState7 | MenhirState10 | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TLIST ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | DARROW | IS | RBRACK | RPAREN | TARROW | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.htype))) = _menhir_stack in
            let _v : (Syntax.htype) = 
# 120 "src/minihaskell/parser.mly"
                             ( _1 )
# 429 "src/minihaskell/parser.ml"
             in
            _menhir_goto_ty_times _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 78 "src/minihaskell/parser.mly"
                        ( _1 )
# 449 "src/minihaskell/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
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

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_goto_lettop : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState103 | MenhirState99 | MenhirState96 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        let _v : (Syntax.toplevel_cmd list) = 
# 47 "src/minihaskell/parser.mly"
                             ( _1 )
# 751 "src/minihaskell/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 53 "src/minihaskell/parser.mly"
                             ( _1 :: _2 )
# 762 "src/minihaskell/parser.ml"
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
# 48 "src/minihaskell/parser.mly"
                             ( _1 )
# 776 "src/minihaskell/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ty_simple : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.htype) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.htype)) = _v in
    let _v : (Syntax.htype) = 
# 125 "src/minihaskell/parser.mly"
              ( _1 )
# 788 "src/minihaskell/parser.ml"
     in
    _menhir_goto_ty_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (_2 : (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 822 "src/minihaskell/parser.ml"
            ))), _, (_4 : (Syntax.htype))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 81 "src/minihaskell/parser.mly"
                                 ( Fun (_2, _4, _6) )
# 827 "src/minihaskell/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 105 "src/minihaskell/parser.mly"
                    ( Times (_1, _3) )
# 849 "src/minihaskell/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 79 "src/minihaskell/parser.mly"
                        ( Cons (_1, _3) )
# 871 "src/minihaskell/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | EQUAL | LESS | LET | MINUS | PLUS | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 103 "src/minihaskell/parser.mly"
                   ( Plus (_1, _3) )
# 899 "src/minihaskell/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
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
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 107 "src/minihaskell/parser.mly"
                  ( Mod (_1, _3) )
# 921 "src/minihaskell/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 106 "src/minihaskell/parser.mly"
                     ( Divide (_1, _3) )
# 943 "src/minihaskell/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | EQUAL | LESS | LET | MINUS | PLUS | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 104 "src/minihaskell/parser.mly"
                    ( Minus (_1, _3) )
# 971 "src/minihaskell/parser.ml"
             in
            _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 113 "src/minihaskell/parser.mly"
                    ( Less (_1, _3) )
# 1003 "src/minihaskell/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
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
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_3 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 112 "src/minihaskell/parser.mly"
                    ( Equal (_1, _3) )
# 1035 "src/minihaskell/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState64
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
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.expr))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 80 "src/minihaskell/parser.mly"
                                ( If (_2, _4, _6) )
# 1195 "src/minihaskell/parser.ml"
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
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
                                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | FST ->
                                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | FUN ->
                                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | IF ->
                                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | INT _v ->
                                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                            | LBRACK ->
                                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | LPAREN ->
                                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | MATCH ->
                                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                            | MINUS ->
                                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.htype))), _, (_6 : (Syntax.expr))), (_8 : (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 1376 "src/minihaskell/parser.ml"
            ))), (_10 : (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 1380 "src/minihaskell/parser.ml"
            ))), _, (_12 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 84 "src/minihaskell/parser.mly"
      ( Match (_2, _4, _6, _8, _10, _12) )
# 1385 "src/minihaskell/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ALTERNATIVE | COMMA | ELSE | EOF | LET | RPAREN | SEMICOLON2 | THEN | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (_2 : (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 1420 "src/minihaskell/parser.ml"
            ))), _, (_4 : (Syntax.htype))), _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 82 "src/minihaskell/parser.mly"
                             ( Rec (_2, _4, _6) )
# 1425 "src/minihaskell/parser.ml"
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
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 98 "src/minihaskell/parser.mly"
                          ( _2 )
# 1496 "src/minihaskell/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 99 "src/minihaskell/parser.mly"
                                  ( Pair (_2, _4) )
# 1534 "src/minihaskell/parser.ml"
             in
            _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EOF | LET | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (_2 : (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 1571 "src/minihaskell/parser.ml"
            ))), _, (_4 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 72 "src/minihaskell/parser.mly"
                        ( Def (_2, _4) )
# 1576 "src/minihaskell/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState0 | MenhirState98 | MenhirState103 | MenhirState99 | MenhirState96 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState98 in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
                    let _v : (Syntax.toplevel_cmd list) = 
# 52 "src/minihaskell/parser.mly"
                             ( [_1] )
# 1593 "src/minihaskell/parser.ml"
                     in
                    _menhir_goto_lettop _menhir_env _menhir_stack _menhir_s _v
                | LET ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | SEMICOLON2 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState98 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | EOF ->
                        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | FALSE ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | FST ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | FUN ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | IF ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | INT _v ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                    | LBRACK ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | LET ->
                        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | LPAREN ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | MATCH ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | MINUS ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | QUIT ->
                        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | REC ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | SND ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                    | VAR _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
            | MenhirState109 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
                    let _v : (Syntax.toplevel_cmd) = 
# 65 "src/minihaskell/parser.mly"
               ( _1 )
# 1657 "src/minihaskell/parser.ml"
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
    | MenhirState103 | MenhirState99 | MenhirState96 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd list) = 
# 57 "src/minihaskell/parser.mly"
                             ( [Expr _1] )
# 1690 "src/minihaskell/parser.ml"
             in
            _menhir_goto_exprtop _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FALSE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LET ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | QUIT ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONS ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 66 "src/minihaskell/parser.mly"
               ( Expr _1 )
# 1768 "src/minihaskell/parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | ALTERNATIVE | COMMA | CONS | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 76 "src/minihaskell/parser.mly"
                        ( _1 )
# 1817 "src/minihaskell/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        Obj.magic _1
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 58 "src/minihaskell/parser.mly"
                             ( Expr _1 :: _3 )
# 1841 "src/minihaskell/parser.ml"
         in
        _menhir_goto_exprtop _menhir_env _menhir_stack _menhir_s _v
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))), _) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 54 "src/minihaskell/parser.mly"
                             ( _1 :: _3 )
# 1852 "src/minihaskell/parser.ml"
         in
        _menhir_goto_lettop _menhir_env _menhir_stack _menhir_s _v
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 62 "src/minihaskell/parser.mly"
                             ( _1 :: _3 )
# 1863 "src/minihaskell/parser.ml"
         in
        _menhir_goto_cmdtop _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel_cmd)) = _v in
    Obj.magic _1

and _menhir_goto_cmdtop : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel_cmd list)) = _v in
    let _v : (Syntax.toplevel_cmd list) = 
# 49 "src/minihaskell/parser.mly"
                             ( _1 )
# 1889 "src/minihaskell/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_arith : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.expr)) = _v in
    let _v : (Syntax.expr) = 
# 77 "src/minihaskell/parser.mly"
                        ( _1 )
# 1901 "src/minihaskell/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.htype) = 
# 130 "src/minihaskell/parser.mly"
                       ( TInt )
# 1912 "src/minihaskell/parser.ml"
     in
    _menhir_goto_ty_simple _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.htype) = 
# 129 "src/minihaskell/parser.mly"
                 ( TBool )
# 1923 "src/minihaskell/parser.ml"
     in
    _menhir_goto_ty_simple _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TBOOL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_goto_non_app : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 88 "src/minihaskell/parser.mly"
                        ( Fst _2 )
# 1955 "src/minihaskell/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | MenhirState109 | MenhirState103 | MenhirState99 | MenhirState96 | MenhirState0 | MenhirState89 | MenhirState82 | MenhirState4 | MenhirState22 | MenhirState77 | MenhirState71 | MenhirState25 | MenhirState66 | MenhirState64 | MenhirState30 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState45 | MenhirState43 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INT _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | LBRACK ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | ALTERNATIVE | COMMA | CONS | DIVIDE | ELSE | EOF | EQUAL | LESS | LET | MINUS | MOD | PLUS | RPAREN | SEMICOLON2 | THEN | TIMES | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.expr))) = _menhir_stack in
            let _v : (Syntax.expr) = 
# 75 "src/minihaskell/parser.mly"
                        ( _1 )
# 1981 "src/minihaskell/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 90 "src/minihaskell/parser.mly"
                        ( Apply (_1, _2) )
# 1995 "src/minihaskell/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.expr))), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 87 "src/minihaskell/parser.mly"
                        ( Apply (_1, _2) )
# 2005 "src/minihaskell/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 89 "src/minihaskell/parser.mly"
                        ( Snd _2 )
# 2015 "src/minihaskell/parser.ml"
         in
        _menhir_goto_app _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel_cmd list) = 
# 46 "src/minihaskell/parser.mly"
                             ( [] )
# 2027 "src/minihaskell/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
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
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 2180 "src/minihaskell/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 6 "src/minihaskell/parser.mly"
       (Syntax.name)
# 2188 "src/minihaskell/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 93 "src/minihaskell/parser.mly"
                    ( Var _1 )
# 2193 "src/minihaskell/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 94 "src/minihaskell/parser.mly"
                           ( Bool true )
# 2204 "src/minihaskell/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState3
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
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | TBOOL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
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

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel_cmd) = 
# 70 "src/minihaskell/parser.mly"
               ( Quit )
# 2278 "src/minihaskell/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState96 | MenhirState103 | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd list) = 
# 61 "src/minihaskell/parser.mly"
                             ( [_1] )
# 2294 "src/minihaskell/parser.ml"
             in
            _menhir_goto_cmdtop _menhir_env _menhir_stack _menhir_s _v
        | SEMICOLON2 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | FALSE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LET ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | QUIT ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
            let _v : (Syntax.toplevel_cmd) = 
# 67 "src/minihaskell/parser.mly"
               ( _1 )
# 2356 "src/minihaskell/parser.ml"
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

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 7 "src/minihaskell/parser.mly"
       (int)
# 2381 "src/minihaskell/parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Syntax.expr) = 
# 102 "src/minihaskell/parser.mly"
                        ( Int (-_2) )
# 2387 "src/minihaskell/parser.ml"
         in
        _menhir_goto_arith _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
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

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState4
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

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FUN ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | IF ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | INT _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | LBRACK ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | MATCH ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | MINUS ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | REC ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
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

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | TBOOL ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "src/minihaskell/parser.mly"
       (int)
# 2551 "src/minihaskell/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 7 "src/minihaskell/parser.mly"
       (int)
# 2559 "src/minihaskell/parser.ml"
    )) = _v in
    let _v : (Syntax.expr) = 
# 96 "src/minihaskell/parser.mly"
                           ( Int _1 )
# 2564 "src/minihaskell/parser.ml"
     in
    _menhir_goto_non_app _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | TBOOL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
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

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.expr) = 
# 95 "src/minihaskell/parser.mly"
                           ( Bool false )
# 2675 "src/minihaskell/parser.ml"
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
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | QUIT ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState0
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
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | FUN ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | IF ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | INT _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
    | LBRACK ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LET ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | MATCH ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | MINUS ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | QUIT ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | REC ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)

# 133 "src/minihaskell/parser.mly"
  

# 2790 "src/minihaskell/parser.ml"

# 269 "<standard.mly>"
  

# 2795 "src/minihaskell/parser.ml"
