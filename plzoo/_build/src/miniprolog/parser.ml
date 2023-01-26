
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | VAR of (
# 5 "src/miniprolog/parser.mly"
       (string)
# 14 "src/miniprolog/parser.ml"
  )
    | TRUE
    | RPAREN
    | PERIOD
    | LPAREN
    | GOAL
    | FROM
    | EOF
    | CONST of (
# 6 "src/miniprolog/parser.mly"
       (string)
# 26 "src/miniprolog/parser.ml"
  )
    | COMMA
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState39
  | MenhirState35
  | MenhirState29
  | MenhirState28
  | MenhirState24
  | MenhirState18
  | MenhirState9
  | MenhirState7
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "src/miniprolog/parser.mly"
  
  open Syntax

# 58 "src/miniprolog/parser.ml"

let rec _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        Obj.magic _1
    | MenhirState35 | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | EOF ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GOAL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
    | _ ->
        _menhir_fail ()

and _menhir_reduce12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (_1 : (Syntax.toplevel_cmd)) ->
    let _v : (Syntax.toplevel_cmd) = 
# 28 "src/miniprolog/parser.mly"
              ( _1 )
# 92 "src/miniprolog/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (_1 : (Syntax.toplevel_cmd)) ->
    let _v : (Syntax.toplevel_cmd) = 
# 27 "src/miniprolog/parser.mly"
              ( _1 )
# 101 "src/miniprolog/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_assertion : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v
    | MenhirState28 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.term list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.term))), _, (_3 : (Syntax.term list))) = _menhir_stack in
        let _v : (Syntax.term list) = 
# 48 "src/miniprolog/parser.mly"
                       ( _1 :: _3 )
# 128 "src/miniprolog/parser.ml"
         in
        _menhir_goto_args _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 6 "src/miniprolog/parser.mly"
       (string)
# 143 "src/miniprolog/parser.ml"
            ))), _, (_3 : (Syntax.term list))) = _menhir_stack in
            let _v : (Syntax.term) = 
# 53 "src/miniprolog/parser.mly"
                             ( App (_1, _3) )
# 148 "src/miniprolog/parser.ml"
             in
            _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v
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
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 6 "src/miniprolog/parser.mly"
       (string)
# 169 "src/miniprolog/parser.ml"
            ))), _, (_3 : (Syntax.term list))) = _menhir_stack in
            let _v : (Syntax.atom) = 
# 39 "src/miniprolog/parser.mly"
                              ( (_1, _3) )
# 174 "src/miniprolog/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce5 : _menhir_env -> (('ttv_tail * _menhir_state * (Syntax.atom))) * _menhir_state * (Syntax.clause) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (_1 : (Syntax.atom))), _, (_3 : (Syntax.clause))) = _menhir_stack in
    let _v : (Syntax.toplevel_cmd) = 
# 35 "src/miniprolog/parser.mly"
                              ( Assert (_1, _3) )
# 192 "src/miniprolog/parser.ml"
     in
    _menhir_goto_assertion _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce15 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * (Syntax.clause) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, (_2 : (Syntax.clause))) = _menhir_stack in
    let _v : (Syntax.toplevel_cmd) = 
# 31 "src/miniprolog/parser.mly"
                              ( Goal _2 )
# 202 "src/miniprolog/parser.ml"
     in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v
    | MenhirState35 | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce4 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.atom) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (Syntax.atom))) = _menhir_stack in
    let _v : (Syntax.toplevel_cmd) = 
# 34 "src/miniprolog/parser.mly"
                              ( Assert (_1, []) )
# 225 "src/miniprolog/parser.ml"
     in
    _menhir_goto_assertion _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_literal : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.term) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | VAR _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.term))) = _menhir_stack in
        let _v : (Syntax.term list) = 
# 47 "src/miniprolog/parser.mly"
                       ( [_1] )
# 255 "src/miniprolog/parser.ml"
         in
        _menhir_goto_args _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_clause : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.clause) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (Syntax.atom))), _, (_3 : (Syntax.clause))) = _menhir_stack in
        let _v : (Syntax.clause) = 
# 44 "src/miniprolog/parser.mly"
                              ( _1 :: _3 )
# 290 "src/miniprolog/parser.ml"
         in
        _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
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
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel_cmd list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel_cmd list)) = _v in
        Obj.magic _1
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Syntax.toplevel_cmd list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Syntax.toplevel_cmd))) = _menhir_stack in
        let _v : (Syntax.toplevel_cmd list) = 
# 24 "src/miniprolog/parser.mly"
                             ( _1 :: _2 )
# 356 "src/miniprolog/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.atom) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 | MenhirState29 | MenhirState24 | MenhirState18 | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Syntax.atom))) = _menhir_stack in
            let _v : (Syntax.clause) = 
# 43 "src/miniprolog/parser.mly"
                              ( [_1] )
# 390 "src/miniprolog/parser.ml"
             in
            _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FROM ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState28 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FROM ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONST _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "src/miniprolog/parser.mly"
       (string)
# 460 "src/miniprolog/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 5 "src/miniprolog/parser.mly"
       (string)
# 468 "src/miniprolog/parser.ml"
    )) = _v in
    let _v : (Syntax.term) = 
# 52 "src/miniprolog/parser.mly"
                             ( Var (_1, 0) )
# 473 "src/miniprolog/parser.ml"
     in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "src/miniprolog/parser.mly"
       (string)
# 480 "src/miniprolog/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | VAR _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
    | COMMA | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "src/miniprolog/parser.mly"
       (string)
# 505 "src/miniprolog/parser.ml"
        ))) = _menhir_stack in
        let _v : (Syntax.term) = 
# 51 "src/miniprolog/parser.mly"
                             ( Const _1 )
# 510 "src/miniprolog/parser.ml"
         in
        _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.clause) = 
# 42 "src/miniprolog/parser.mly"
                              ( [] )
# 527 "src/miniprolog/parser.ml"
     in
    _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONST _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel_cmd list) = 
# 23 "src/miniprolog/parser.mly"
                             ( [] )
# 598 "src/miniprolog/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "src/miniprolog/parser.mly"
       (string)
# 605 "src/miniprolog/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | VAR _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
    | COMMA | FROM | PERIOD ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 6 "src/miniprolog/parser.mly"
       (string)
# 630 "src/miniprolog/parser.ml"
        ))) = _menhir_stack in
        let _v : (Syntax.atom) = 
# 38 "src/miniprolog/parser.mly"
                              ( (_1, []) )
# 635 "src/miniprolog/parser.ml"
         in
        _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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

and expr : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel_cmd) =
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
    | CONST _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | GOAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState0 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONST _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

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
    | CONST _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | EOF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | GOAL ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)

# 56 "src/miniprolog/parser.mly"
  

# 717 "src/miniprolog/parser.ml"

# 269 "<standard.mly>"
  

# 722 "src/miniprolog/parser.ml"
