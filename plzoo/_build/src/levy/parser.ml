
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | VAR of (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 14 "src/levy/parser.ml"
  )
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
    | INT of (
# 11 "src/levy/parser.mly"
       (int)
# 38 "src/levy/parser.ml"
  )
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
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState112
  | MenhirState106
  | MenhirState103
  | MenhirState101
  | MenhirState98
  | MenhirState94
  | MenhirState86
  | MenhirState83
  | MenhirState81
  | MenhirState77
  | MenhirState74
  | MenhirState72
  | MenhirState71
  | MenhirState68
  | MenhirState65
  | MenhirState62
  | MenhirState60
  | MenhirState48
  | MenhirState44
  | MenhirState43
  | MenhirState41
  | MenhirState38
  | MenhirState37
  | MenhirState34
  | MenhirState28
  | MenhirState18
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState5
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "src/levy/parser.mly"
  
  open Syntax

# 103 "src/levy/parser.ml"

let rec _menhir_goto_nonempty_list_def_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState101 | MenhirState98 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (ds : (Syntax.toplevel list))) = _menhir_stack in
            let _v : (Syntax.toplevel list) = 
# 45 "src/levy/parser.mly"
    ( ds )
# 121 "src/levy/parser.ml"
             in
            _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
        | SEMISEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORCE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REC ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | THUNK ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Syntax.toplevel))), _, (xs : (Syntax.toplevel list))) = _menhir_stack in
        let _v : (Syntax.toplevel list) = 
# 223 "<standard.mly>"
    ( x :: xs )
# 174 "src/levy/parser.ml"
         in
        _menhir_goto_nonempty_list_def_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Syntax.toplevel)) = _v in
    Obj.magic _1

and _menhir_reduce5 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 190 "src/levy/parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, (_2 : (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 196 "src/levy/parser.ml"
    )), _startpos__2_), _endpos__4_, _, (_4 : (Syntax.expr))) = _menhir_stack in
    let _v : (Syntax.toplevel) = 
# 55 "src/levy/parser.mly"
    ( Def (_2, _4) )
# 201 "src/levy/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState98 | MenhirState103 | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState103 in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VAR _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EQUAL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | DO ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FALSE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FORCE ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FUN ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IF ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LET ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | REC ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | RETURN ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | THUNK ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | VAR _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EOF | SEMISEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Syntax.toplevel))) = _menhir_stack in
            let _v : (Syntax.toplevel list) = 
# 221 "<standard.mly>"
    ( [ x ] )
# 279 "src/levy/parser.ml"
             in
            _menhir_goto_nonempty_list_def_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (d : (Syntax.toplevel))) = _menhir_stack in
            let _v : (Syntax.toplevel) = 
# 49 "src/levy/parser.mly"
    ( d )
# 298 "src/levy/parser.ml"
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

and _menhir_run86 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 313 "src/levy/parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * (Syntax.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState86 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState86 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState86 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run68 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Syntax.value) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run72 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Syntax.value) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_goto_plain_expr : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState112 | MenhirState106 | MenhirState101 | MenhirState98 | MenhirState0 | MenhirState94 | MenhirState34 | MenhirState86 | MenhirState37 | MenhirState83 | MenhirState81 | MenhirState38 | MenhirState43 | MenhirState65 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Syntax.expr')), _startpos_x_) = _menhir_stack in
        let _endpos = _endpos_x_ in
        let _v : (Syntax.expr) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 416 "src/levy/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Syntax.expr)) = _v in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.expr) = 
# 57 "src/levy/parser.mly"
                                 ( _1 )
# 426 "src/levy/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState48 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | DO ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORCE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | REC ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RETURN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | THUNK ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState65 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState65 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, (_2 : (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 482 "src/levy/parser.ml"
            )), _startpos__2_), _endpos__4_, _, (_4 : (Syntax.expr))), _endpos__6_, _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__6_ in
            let _v : (Syntax.expr') = 
# 61 "src/levy/parser.mly"
                                 ( Do (_2, _4, _6) )
# 489 "src/levy/parser.ml"
             in
            _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState43 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, (_2 : (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 498 "src/levy/parser.ml"
            )), _startpos__2_), _endpos__4_, _, (_4 : (Syntax.ctype))), _endpos__6_, _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__6_ in
            let _v : (Syntax.expr') = 
# 63 "src/levy/parser.mly"
                                 ( Fun (_2, _4, _6) )
# 505 "src/levy/parser.ml"
             in
            _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState38 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | THEN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | DO ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORCE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | REC ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RETURN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | THUNK ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState81 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ELSE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | DO ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORCE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | REC ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RETURN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | THUNK ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState83 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (Syntax.expr))), _endpos__4_, _, (_4 : (Syntax.expr))), _endpos__6_, _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__6_ in
            let _v : (Syntax.expr') = 
# 62 "src/levy/parser.mly"
                                 ( If (_2, _4, _6) )
# 609 "src/levy/parser.ml"
             in
            _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState37 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState86 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, (_2 : (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 631 "src/levy/parser.ml"
            )), _startpos__2_), _endpos__4_, _, (_4 : (Syntax.expr))), _endpos__6_, _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__6_ in
            let _v : (Syntax.expr') = 
# 60 "src/levy/parser.mly"
                                 ( Let (_2, _4, _6) )
# 638 "src/levy/parser.ml"
             in
            _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState34 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, (_2 : (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 647 "src/levy/parser.ml"
            )), _startpos__2_), _endpos__4_, _, (_4 : (Syntax.ctype))), _endpos__6_, _, (_6 : (Syntax.expr))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__6_ in
            let _v : (Syntax.expr') = 
# 64 "src/levy/parser.mly"
                                 ( Rec (_2, _4, _6) )
# 654 "src/levy/parser.ml"
             in
            _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState94 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
            | EOF | LET | SEMISEMI ->
                _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState0 | MenhirState101 | MenhirState98 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
                let _v : (Syntax.toplevel list) = 
# 39 "src/levy/parser.mly"
    ( [Expr e] )
# 684 "src/levy/parser.ml"
                 in
                _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
            | SEMISEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | DO ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF ->
                    _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState101
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORCE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | REC ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RETURN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | THUNK ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState106 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
        | MenhirState112 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
                let _v : (Syntax.toplevel) = 
# 51 "src/levy/parser.mly"
    ( Expr e )
# 745 "src/levy/parser.ml"
                 in
                _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (Syntax.expr')), _startpos__2_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.expr') = 
# 97 "src/levy/parser.mly"
                              ( _2 )
# 773 "src/levy/parser.ml"
             in
            _menhir_goto_plain_simple _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run60 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Syntax.value) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_reduce15 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Syntax.expr') * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Syntax.expr')), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Syntax.value) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 821 "src/levy/parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let (_1 : (Syntax.value)) = _v in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.value) = 
# 72 "src/levy/parser.mly"
                                  ( _1 )
# 833 "src/levy/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState112 | MenhirState0 | MenhirState98 | MenhirState101 | MenhirState106 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState37 | MenhirState86 | MenhirState38 | MenhirState81 | MenhirState83 | MenhirState43 | MenhirState48 | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORCE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | THUNK ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState77 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState77 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
        | LESS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORCE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | THUNK ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | IN | LET | RPAREN | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.value)), _startpos__1_), _endpos__3_, _, (_3 : (Syntax.value)), _startpos__3_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.expr') = 
# 70 "src/levy/parser.mly"
                        ( Less (_1, _3) )
# 919 "src/levy/parser.ml"
             in
            _menhir_goto_plain_boolean _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | IN | LET | RPAREN | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.value)), _startpos__1_), _endpos__3_, _, (_3 : (Syntax.value)), _startpos__3_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.expr') = 
# 69 "src/levy/parser.mly"
                        ( Equal (_1, _3) )
# 945 "src/levy/parser.ml"
             in
            _menhir_goto_plain_boolean _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_boolean : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let (_1 : (Syntax.expr')) = _v in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.expr') = 
# 59 "src/levy/parser.mly"
                                 ( _1 )
# 969 "src/levy/parser.ml"
     in
    _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_plain_ty : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.ltype') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _, (_2 : (Syntax.ltype')), _startpos__2_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.ltype') = 
# 114 "src/levy/parser.mly"
                             ( _2 )
# 994 "src/levy/parser.ml"
             in
            _menhir_goto_plain_simple_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState13 | MenhirState41 | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Syntax.ltype')), _startpos_x_) = _menhir_stack in
        let _endpos = _endpos_x_ in
        let _v : (Syntax.ctype) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 1013 "src/levy/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Syntax.ctype)) = _v in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.ctype) = 
# 99 "src/levy/parser.mly"
                              ( _1 )
# 1023 "src/levy/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState28 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Syntax.vtype)), _startpos__1_), _endpos__3_, _, (_3 : (Syntax.ctype))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.ltype') = 
# 102 "src/levy/parser.mly"
                              ( CArrow (_1, _3) )
# 1036 "src/levy/parser.ml"
             in
            _menhir_goto_plain_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState13 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | DO ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORCE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | REC ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RETURN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | THUNK ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState41 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | DO ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORCE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | REC ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RETURN ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | THUNK ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | VAR _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        _menhir_fail ()

and _menhir_reduce17 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Syntax.expr') * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Syntax.expr')), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Syntax.value) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 1146 "src/levy/parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let (_1 : (Syntax.value)) = _v in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.value) = 
# 78 "src/levy/parser.mly"
                                    ( _1 )
# 1158 "src/levy/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState112 | MenhirState0 | MenhirState106 | MenhirState101 | MenhirState98 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState86 | MenhirState37 | MenhirState83 | MenhirState81 | MenhirState38 | MenhirState43 | MenhirState77 | MenhirState74 | MenhirState65 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TIMES ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TIMES ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | PLUS | RPAREN | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.value)), _startpos__1_), _endpos__3_, _, (_3 : (Syntax.value)), _startpos__3_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.expr') = 
# 75 "src/levy/parser.mly"
                        ( Plus (_1, _3) )
# 1190 "src/levy/parser.ml"
             in
            _menhir_goto_plain_arith _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TIMES ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | PLUS | RPAREN | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.value)), _startpos__1_), _endpos__3_, _, (_3 : (Syntax.value)), _startpos__3_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.expr') = 
# 76 "src/levy/parser.mly"
                        ( Minus (_1, _3) )
# 1214 "src/levy/parser.ml"
             in
            _menhir_goto_plain_arith _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_arith : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState112 | MenhirState106 | MenhirState101 | MenhirState98 | MenhirState0 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState86 | MenhirState37 | MenhirState83 | MenhirState81 | MenhirState38 | MenhirState43 | MenhirState65 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE | EOF | IN | LET | RPAREN | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.expr')), _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__1_ in
            let _v : (Syntax.expr') = 
# 68 "src/levy/parser.mly"
                        ( _1 )
# 1243 "src/levy/parser.ml"
             in
            _menhir_goto_plain_boolean _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | EQUAL | LESS | MINUS | PLUS ->
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_app_ty : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.ltype') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DARROW | IS | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.ltype')), _startpos__1_) = _menhir_stack in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.ltype') = 
# 101 "src/levy/parser.mly"
                              ( _1 )
# 1275 "src/levy/parser.ml"
         in
        _menhir_goto_plain_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | TARROW ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Syntax.ltype')), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _v : (Syntax.vtype) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 1287 "src/levy/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.vtype)) = _v in
        let _startpos__1_ = _startpos in
        let _startpos = _startpos__1_ in
        let _v : (Syntax.vtype) = 
# 104 "src/levy/parser.mly"
                                    ( _1 )
# 1297 "src/levy/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFORGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFREE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState28 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce13 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Syntax.expr') * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Syntax.expr')), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Syntax.value) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 1346 "src/levy/parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let (_1 : (Syntax.value)) = _v in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.value) = 
# 83 "src/levy/parser.mly"
                              ( _1 )
# 1358 "src/levy/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | PLUS | RPAREN | SEMISEMI | THEN | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.value)), _startpos__1_), _endpos__3_, _, (_3 : (Syntax.value)), _startpos__3_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Syntax.expr') = 
# 81 "src/levy/parser.mly"
                        ( Times (_1, _3) )
# 1385 "src/levy/parser.ml"
             in
            _menhir_goto_plain_factor _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
    | MenhirState112 | MenhirState0 | MenhirState98 | MenhirState101 | MenhirState106 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState37 | MenhirState86 | MenhirState38 | MenhirState81 | MenhirState83 | MenhirState43 | MenhirState48 | MenhirState65 | MenhirState77 | MenhirState74 | MenhirState72 | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_factor : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState112 | MenhirState106 | MenhirState101 | MenhirState98 | MenhirState0 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState86 | MenhirState37 | MenhirState83 | MenhirState81 | MenhirState38 | MenhirState43 | MenhirState77 | MenhirState74 | MenhirState65 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | PLUS | RPAREN | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.expr')), _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__1_ in
            let _v : (Syntax.expr') = 
# 74 "src/levy/parser.mly"
                        ( _1 )
# 1431 "src/levy/parser.ml"
             in
            _menhir_goto_plain_arith _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | TIMES ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState72 | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_simple_ty : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.ltype') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState15 | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_x_ = _endpos in
        let (x : (Syntax.ltype')) = _v in
        let _startpos_x_ = _startpos in
        let _endpos = _endpos_x_ in
        let _v : (Syntax.vtype) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 1463 "src/levy/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Syntax.vtype)) = _v in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.vtype) = 
# 110 "src/levy/parser.mly"
                                          ( _1 )
# 1473 "src/levy/parser.ml"
         in
        (match _menhir_s with
        | MenhirState18 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (_2 : (Syntax.vtype)) = _v in
            let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _v : (Syntax.ltype') = 
# 107 "src/levy/parser.mly"
                              ( VForget _2 )
# 1487 "src/levy/parser.ml"
             in
            _menhir_goto_plain_app_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState15 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (_2 : (Syntax.vtype)) = _v in
            let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _v : (Syntax.ltype') = 
# 108 "src/levy/parser.mly"
                              ( CFree _2 )
# 1501 "src/levy/parser.ml"
             in
            _menhir_goto_plain_app_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            _menhir_fail ())
    | MenhirState13 | MenhirState41 | MenhirState28 | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Syntax.ltype')) = _v in
        let _startpos__1_ = _startpos in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.ltype') = 
# 106 "src/levy/parser.mly"
                              ( _1 )
# 1517 "src/levy/parser.ml"
         in
        _menhir_goto_plain_app_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_plain_app : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState112 | MenhirState106 | MenhirState101 | MenhirState98 | MenhirState0 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState86 | MenhirState37 | MenhirState83 | MenhirState81 | MenhirState38 | MenhirState43 | MenhirState77 | MenhirState74 | MenhirState72 | MenhirState68 | MenhirState65 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE | EOF | EQUAL | IN | LESS | LET | MINUS | PLUS | RPAREN | SEMISEMI | THEN | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.expr')), _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__1_ in
            let _v : (Syntax.expr') = 
# 80 "src/levy/parser.mly"
                        ( _1 )
# 1545 "src/levy/parser.ml"
             in
            _menhir_goto_plain_factor _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | FALSE | INT _ | LPAREN | TRUE | VAR _ ->
            _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        _menhir_fail ()

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.toplevel list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (lst : (Syntax.toplevel list)) = _v in
        let (_menhir_stack, _menhir_s, (ds : (Syntax.toplevel list))) = _menhir_stack in
        let _v : (Syntax.toplevel list) = 
# 43 "src/levy/parser.mly"
    ( ds @ lst )
# 1573 "src/levy/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (lst : (Syntax.toplevel list)) = _v in
        let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Syntax.expr))) = _menhir_stack in
        let _v : (Syntax.toplevel list) = 
# 41 "src/levy/parser.mly"
    ( Expr e :: lst )
# 1584 "src/levy/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Syntax.toplevel list)) = _v in
        Obj.magic _1
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.ltype') = 
# 112 "src/levy/parser.mly"
                             ( VInt )
# 1606 "src/levy/parser.ml"
     in
    _menhir_goto_plain_simple_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run16 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.ltype') = 
# 113 "src/levy/parser.mly"
                             ( VBool )
# 1655 "src/levy/parser.ml"
     in
    _menhir_goto_plain_simple_ty _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TFORGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TFREE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState17 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_goto_plain_simple : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Syntax.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState3 | MenhirState71 | MenhirState62 | MenhirState44 | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_x_ = _endpos in
        let (x : (Syntax.expr')) = _v in
        let _startpos_x_ = _startpos in
        let _endpos = _endpos_x_ in
        let _v : (Syntax.value) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 118 "src/levy/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 1695 "src/levy/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Syntax.value)) = _v in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.value) = 
# 91 "src/levy/parser.mly"
                                    ( _1 )
# 1705 "src/levy/parser.ml"
         in
        (match _menhir_s with
        | MenhirState5 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (_2 : (Syntax.value)) = _v in
            let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _v : (Syntax.expr') = 
# 87 "src/levy/parser.mly"
                      ( Return _2 )
# 1719 "src/levy/parser.ml"
             in
            _menhir_goto_plain_app _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState44 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (_2 : (Syntax.value)) = _v in
            let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _v : (Syntax.expr') = 
# 86 "src/levy/parser.mly"
                      ( Force _2 )
# 1733 "src/levy/parser.ml"
             in
            _menhir_goto_plain_app _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState71 | MenhirState62 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (_2 : (Syntax.value)) = _v in
            let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (Syntax.value)), _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _v : (Syntax.expr') = 
# 89 "src/levy/parser.mly"
                      ( Apply (_1, _2) )
# 1747 "src/levy/parser.ml"
             in
            _menhir_goto_plain_app _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState3 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (_2 : (Syntax.value)) = _v in
            let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _v : (Syntax.expr') = 
# 88 "src/levy/parser.mly"
                      ( Thunk _2 )
# 1761 "src/levy/parser.ml"
             in
            _menhir_goto_plain_app _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            _menhir_fail ())
    | MenhirState112 | MenhirState106 | MenhirState101 | MenhirState98 | MenhirState0 | MenhirState94 | MenhirState4 | MenhirState34 | MenhirState86 | MenhirState37 | MenhirState83 | MenhirState81 | MenhirState38 | MenhirState43 | MenhirState77 | MenhirState74 | MenhirState72 | MenhirState68 | MenhirState65 | MenhirState60 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Syntax.expr')) = _v in
        let _startpos__1_ = _startpos in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Syntax.expr') = 
# 85 "src/levy/parser.mly"
                      ( _1 )
# 1777 "src/levy/parser.ml"
         in
        _menhir_goto_plain_app _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        _menhir_fail ()

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORCE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REC ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | THUNK ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState37 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.toplevel list) = 
# 37 "src/levy/parser.mly"
    ( [] )
# 1851 "src/levy/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 1992 "src/levy/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let (_1 : (
# 10 "src/levy/parser.mly"
       (Syntax.name)
# 2001 "src/levy/parser.ml"
    )) = _v in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.expr') = 
# 93 "src/levy/parser.mly"
                              ( Var _1 )
# 2009 "src/levy/parser.ml"
     in
    _menhir_goto_plain_simple _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run2 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.expr') = 
# 95 "src/levy/parser.mly"
                              ( Bool true )
# 2024 "src/levy/parser.ml"
     in
    _menhir_goto_plain_simple _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState3 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState3 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState3 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState3 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFORGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFREE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUAL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORCE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REC ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | THUNK ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run6 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "src/levy/parser.mly"
       (int)
# 2218 "src/levy/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let (_1 : (
# 11 "src/levy/parser.mly"
       (int)
# 2227 "src/levy/parser.ml"
    )) = _v in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.expr') = 
# 94 "src/levy/parser.mly"
                              ( Int _1 )
# 2235 "src/levy/parser.ml"
     in
    _menhir_goto_plain_simple _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFORGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFREE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState41 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run7 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Syntax.expr') = 
# 96 "src/levy/parser.mly"
                              ( Bool false )
# 2354 "src/levy/parser.ml"
     in
    _menhir_goto_plain_simple _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORCE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REC ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | THUNK ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel list) =
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
    | DO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

and toplevel : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.toplevel) =
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
    | DO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORCE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FUN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | REC ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | THUNK ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)

# 120 "src/levy/parser.mly"
  

# 2523 "src/levy/parser.ml"

# 269 "<standard.mly>"
  

# 2528 "src/levy/parser.ml"
