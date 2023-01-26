
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | SHALLOW
    | SEMI
    | RPAREN
    | QUIT
    | PERIOD
    | NAME of (
# 15 "src/lambda/parser.mly"
       (string)
# 19 "src/lambda/parser.ml"
  )
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
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState57
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState50
  | MenhirState22
  | MenhirState15
  | MenhirState11
  | MenhirState7
  | MenhirState6
  | MenhirState4
  | MenhirState0

# 1 "src/lambda/parser.mly"
  
  open Input

  (* Build nested lambdas *)
  let make_lambda e xs =
    let rec fold = function
      | [] -> e
      | {Zoo.data=x; loc} :: xs ->
         let e = fold xs in
         Zoo.locate ~loc (Lambda (x, e))
    in
    fold xs

# 71 "src/lambda/parser.ml"

let rec _menhir_goto_plain_expr : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Input.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState50 | MenhirState53 | MenhirState54 | MenhirState55 | MenhirState57 | MenhirState0 | MenhirState4 | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Input.expr')), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Input.expr) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 88 "src/lambda/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Input.expr)) = _v in
        let _startpos__1_ = _startpos in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Input.expr) = 
# 80 "src/lambda/parser.mly"
                                ( _1 )
# 100 "src/lambda/parser.ml"
         in
        (match _menhir_s with
        | MenhirState15 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_e_ = _endpos in
            let (e : (Input.expr)) = _v in
            let _startpos_e_ = _startpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _, (xs : (string Zoo.located list))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Input.expr') = 
# 83 "src/lambda/parser.mly"
    ( (make_lambda e xs).Zoo.data )
# 115 "src/lambda/parser.ml"
             in
            _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | MenhirState4 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_e_ = _endpos in
            let (e : (Input.expr)) = _v in
            let _startpos_e_ = _startpos in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 15 "src/lambda/parser.mly"
       (string)
# 127 "src/lambda/parser.ml"
            )), _startpos_x_) = _menhir_stack in
            let _startpos = _startpos_x_ in
            let _endpos = _endpos_e_ in
            let _v : (Input.toplevel') = 
# 56 "src/lambda/parser.mly"
    ( TopDefine (x, e) )
# 134 "src/lambda/parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_x_ = _endpos in
            let (x : (Input.toplevel')) = _v in
            let _startpos_x_ = _startpos in
            let _v : (Input.toplevel) = let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 146 "src/lambda/parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Input.toplevel)) = _v in
            let _v : (Input.toplevel) = 
# 53 "src/lambda/parser.mly"
                                    ( _1 )
# 154 "src/lambda/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState0 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (def : (Input.toplevel))) = _menhir_stack in
                    let _v : (Input.toplevel) = 
# 41 "src/lambda/parser.mly"
    ( def )
# 170 "src/lambda/parser.ml"
                     in
                    _menhir_goto_commandline _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState50 | MenhirState53 | MenhirState54 | MenhirState57 | MenhirState55 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (e : (Input.toplevel))) = _menhir_stack in
                    let _v : (Input.toplevel list) = 
# 32 "src/lambda/parser.mly"
                                 ( [e] )
# 191 "src/lambda/parser.ml"
                     in
                    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
                | SEMI ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | CONSTANT ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | CONTEXT ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | DEEP ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | EAGER ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | EOF ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57
                    | HELP ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LAMBDA ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LAZY ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NAME _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | QUIT ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | SHALLOW ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | MenhirState50 | MenhirState53 | MenhirState54 | MenhirState55 | MenhirState57 | MenhirState0 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_e_ = _endpos in
            let (e : (Input.expr)) = _v in
            let _startpos_e_ = _startpos in
            let _startpos = _startpos_e_ in
            let _endpos = _endpos_e_ in
            let _v : (Input.toplevel') = 
# 50 "src/lambda/parser.mly"
    ( Expr e )
# 246 "src/lambda/parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_x_ = _endpos in
            let (x : (Input.toplevel')) = _v in
            let _startpos_x_ = _startpos in
            let _v : (Input.toplevel) = let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 258 "src/lambda/parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Input.toplevel)) = _v in
            let _v : (Input.toplevel) = 
# 47 "src/lambda/parser.mly"
                                      ( _1 )
# 266 "src/lambda/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState0 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (e : (Input.toplevel))) = _menhir_stack in
                    let _v : (Input.toplevel) = 
# 43 "src/lambda/parser.mly"
    ( e )
# 282 "src/lambda/parser.ml"
                     in
                    _menhir_goto_commandline _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState54 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState50 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (e : (Input.toplevel))) = _menhir_stack in
                    let _v : (Input.toplevel list) = 
# 34 "src/lambda/parser.mly"
                                 ( [e] )
# 303 "src/lambda/parser.ml"
                     in
                    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
                | SEMI ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | CONSTANT ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | CONTEXT ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | DEEP ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | EAGER ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | EOF ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState53
                    | HELP ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LAMBDA ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LAZY ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NAME _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | QUIT ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | SHALLOW ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState53 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
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
            _menhir_fail ())
    | MenhirState6 ->
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
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Input.expr')), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Input.expr') = 
# 99 "src/lambda/parser.mly"
    ( e )
# 366 "src/lambda/parser.ml"
             in
            _menhir_goto_plain_simple_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_app_expr : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Input.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF | RPAREN | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Input.expr')), _startpos_e_) = _menhir_stack in
        let _startpos = _startpos_e_ in
        let _endpos = _endpos_e_ in
        let _v : (Input.expr') = 
# 85 "src/lambda/parser.mly"
    ( e )
# 393 "src/lambda/parser.ml"
         in
        _menhir_goto_plain_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | LPAREN | NAME _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Input.expr')), _startpos_x_) = _menhir_stack in
        let _startpos = _startpos_x_ in
        let _v : (Input.expr) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 405 "src/lambda/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Input.expr)) = _v in
        let _startpos__1_ = _startpos in
        let _startpos = _startpos__1_ in
        let _v : (Input.expr) = 
# 87 "src/lambda/parser.mly"
                                        ( _1 )
# 415 "src/lambda/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_plain_simple_expr : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Input.expr') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState50 | MenhirState53 | MenhirState54 | MenhirState55 | MenhirState57 | MenhirState0 | MenhirState4 | MenhirState6 | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_e_ = _endpos in
        let (e : (Input.expr')) = _v in
        let _startpos_e_ = _startpos in
        let _startpos = _startpos_e_ in
        let _endpos = _endpos_e_ in
        let _v : (Input.expr') = 
# 90 "src/lambda/parser.mly"
    ( e )
# 451 "src/lambda/parser.ml"
         in
        _menhir_goto_plain_app_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_x_ = _endpos in
        let (x : (Input.expr')) = _v in
        let _startpos_x_ = _startpos in
        let _endpos = _endpos_x_ in
        let _v : (Input.expr) = let _endpos = _endpos_x_ in
        let _startpos = _startpos_x_ in
        
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 466 "src/lambda/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__1_ = _endpos in
        let (_1 : (Input.expr)) = _v in
        let _endpos = _endpos__1_ in
        let _v : (Input.expr) = 
# 94 "src/lambda/parser.mly"
                                              ( _1 )
# 476 "src/lambda/parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_e2_ = _endpos in
        let (e2 : (Input.expr)) = _v in
        let (_menhir_stack, _menhir_s, (e1 : (Input.expr)), _startpos_e1_) = _menhir_stack in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Input.expr') = 
# 92 "src/lambda/parser.mly"
    ( App (e1, e2) )
# 488 "src/lambda/parser.ml"
         in
        _menhir_goto_plain_app_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_name_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string Zoo.located list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (string Zoo.located list)) = _v in
        let _v : (string Zoo.located list) = 
# 101 "src/lambda/parser.mly"
                             ( _1 )
# 504 "src/lambda/parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PERIOD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LAMBDA ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NAME _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (string Zoo.located list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (string Zoo.located))) = _menhir_stack in
        let _v : (string Zoo.located list) = 
# 223 "<standard.mly>"
    ( x :: xs )
# 540 "src/lambda/parser.ml"
         in
        _menhir_goto_nonempty_list_name_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_commandline : _menhir_env -> 'ttv_tail -> _menhir_state -> (Input.toplevel) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Input.toplevel)) = _v in
    Obj.magic _1

and _menhir_reduce30 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 15 "src/lambda/parser.mly"
       (string)
# 561 "src/lambda/parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 15 "src/lambda/parser.mly"
       (string)
# 567 "src/lambda/parser.ml"
    )), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (Input.expr') = 
# 97 "src/lambda/parser.mly"
    ( Var x )
# 574 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_simple_expr _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run5 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 15 "src/lambda/parser.mly"
       (string)
# 581 "src/lambda/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 15 "src/lambda/parser.mly"
       (string)
# 591 "src/lambda/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (
# 15 "src/lambda/parser.mly"
       (string)
# 600 "src/lambda/parser.ml"
    )) = _v in
    let _startpos_x_ = _startpos in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : (string) = 
# 105 "src/lambda/parser.mly"
    ( x )
# 608 "src/lambda/parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (string)) = _v in
    let _startpos_x_ = _startpos in
    let _v : (string Zoo.located) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 620 "src/lambda/parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (string Zoo.located)) = _v in
    let _v : (string Zoo.located) = 
# 102 "src/lambda/parser.mly"
                                ( _1 )
# 628 "src/lambda/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState11 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PERIOD ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (string Zoo.located))) = _menhir_stack in
        let _v : (string Zoo.located list) = 
# 221 "<standard.mly>"
    ( [ x ] )
# 643 "src/lambda/parser.ml"
         in
        _menhir_goto_nonempty_list_name_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (Input.toplevel list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (es : (Input.toplevel list)) = _v in
        let (_menhir_stack, _menhir_s, (e : (Input.toplevel))) = _menhir_stack in
        let _v : (Input.toplevel list) = 
# 33 "src/lambda/parser.mly"
                                 ( e :: es )
# 662 "src/lambda/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (es : (Input.toplevel list)) = _v in
        let ((_menhir_stack, _menhir_s, (e : (Input.toplevel))), _) = _menhir_stack in
        let _v : (Input.toplevel list) = 
# 37 "src/lambda/parser.mly"
                                 ( e :: es )
# 673 "src/lambda/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (es : (Input.toplevel list)) = _v in
        let (_menhir_stack, _menhir_s, (e : (Input.toplevel))) = _menhir_stack in
        let _v : (Input.toplevel list) = 
# 36 "src/lambda/parser.mly"
                                 ( e :: es )
# 684 "src/lambda/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (es : (Input.toplevel list)) = _v in
        let (_menhir_stack, _menhir_s, (e : (Input.toplevel))) = _menhir_stack in
        let _v : (Input.toplevel list) = 
# 35 "src/lambda/parser.mly"
                                 ( e :: es )
# 695 "src/lambda/parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Input.toplevel list)) = _v in
        Obj.magic _1
    | _ ->
        _menhir_fail ()

and _menhir_goto_plain_topdirective : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Input.toplevel') -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_x_ = _endpos in
    let (x : (Input.toplevel')) = _v in
    let _startpos_x_ = _startpos in
    let _v : (Input.toplevel) = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    
# 109 "src/lambda/parser.mly"
  ( Zoo.locate ~loc:(Zoo.make_location _startpos _endpos) x )
# 718 "src/lambda/parser.ml"
     in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Input.toplevel)) = _v in
    let _v : (Input.toplevel) = 
# 59 "src/lambda/parser.mly"
                                                ( _1 )
# 726 "src/lambda/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (dir : (Input.toplevel))) = _menhir_stack in
            let _v : (Input.toplevel) = 
# 45 "src/lambda/parser.mly"
    ( dir )
# 742 "src/lambda/parser.ml"
             in
            _menhir_goto_commandline _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 | MenhirState54 | MenhirState57 | MenhirState55 | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONSTANT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTEXT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DEEP ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EAGER ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | HELP ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LAMBDA ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LAZY ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NAME _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | QUIT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState54 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CONSTANT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CONTEXT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DEEP ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EAGER ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EOF ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | HELP ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LAMBDA ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LAZY ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NAME _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | QUIT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SHALLOW ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState55 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
        | SHALLOW ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 70 "src/lambda/parser.mly"
    ( Deep false )
# 883 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run2 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 76 "src/lambda/parser.mly"
    ( Quit )
# 898 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run3 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 15 "src/lambda/parser.mly"
       (string)
# 905 "src/lambda/parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLONEQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LAMBDA ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState4 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
    | EOF | LPAREN | NAME _ | SEMI ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LAMBDA ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAME _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState6 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run29 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 66 "src/lambda/parser.mly"
    ( Eager false )
# 964 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run30 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 74 "src/lambda/parser.mly"
    ( Help )
# 992 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Input.toplevel list) = 
# 31 "src/lambda/parser.mly"
                                 ( [] )
# 1002 "src/lambda/parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 64 "src/lambda/parser.mly"
    ( Eager true )
# 1017 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run32 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 68 "src/lambda/parser.mly"
    ( Deep true )
# 1032 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run33 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Input.toplevel') = 
# 72 "src/lambda/parser.mly"
    ( Context )
# 1047 "src/lambda/parser.ml"
     in
    _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_x_ = _endpos in
        let (x : (
# 15 "src/lambda/parser.mly"
       (string)
# 1067 "src/lambda/parser.ml"
        )) = _v in
        let _startpos_x_ = _startpos in
        let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_ in
        let _v : (Input.toplevel') = 
# 62 "src/lambda/parser.mly"
    ( TopConstant x )
# 1076 "src/lambda/parser.ml"
         in
        _menhir_goto_plain_topdirective _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
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

and commandline : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Input.toplevel) =
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
    | CONSTANT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CONTEXT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DEEP ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EAGER ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | HELP ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LAMBDA ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LAZY ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUIT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SHALLOW ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Input.toplevel list) =
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
    | CONSTANT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CONTEXT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DEEP ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EAGER ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | HELP ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LAMBDA ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LAZY ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAME _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | QUIT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SHALLOW ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)

# 111 "src/lambda/parser.mly"
  

# 1181 "src/lambda/parser.ml"

# 269 "<standard.mly>"
  

# 1186 "src/lambda/parser.ml"
