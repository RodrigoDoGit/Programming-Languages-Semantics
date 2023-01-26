
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | WHILE
    | VARIABLE of (
# 5 "src/comm/parser.mly"
       (string)
# 15 "src/comm/parser.ml"
  )
    | TRUE
    | TIMES
    | THEN
    | SKIP
    | SEMICOLON
    | RPAREN
    | REMAINDER
    | PRINT
    | PLUS
    | OR
    | NUMERAL of (
# 4 "src/comm/parser.mly"
       (int)
# 30 "src/comm/parser.ml"
  )
    | NOT
    | NEW
    | MINUS
    | LPAREN
    | LESS
    | IN
    | IF
    | FALSE
    | EQUAL
    | EOF
    | END
    | ELSE
    | DONE
    | DO
    | DIVIDE
    | ASSIGN
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
  | MenhirState66
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState44
  | MenhirState40
  | MenhirState37
  | MenhirState35
  | MenhirState31
  | MenhirState28
  | MenhirState24
  | MenhirState22
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState10
  | MenhirState9
  | MenhirState6
  | MenhirState5
  | MenhirState1
  | MenhirState0

# 1 "src/comm/parser.mly"
  

# 91 "src/comm/parser.ml"

let rec _menhir_run9 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run12 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expression))) = _menhir_stack in
    let _v : (Syntax.expression) = 
# 63 "src/comm/parser.mly"
                                          ( e )
# 117 "src/comm/parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.boolean) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.boolean) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.command) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IF ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NEW ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | PRINT ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | SKIP ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | VARIABLE _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
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
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 62 "src/comm/parser.mly"
                                             ( Syntax.Remainder (e1, e2) )
# 351 "src/comm/parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DONE | ELSE | END | EOF | EQUAL | IN | LESS | MINUS | OR | PLUS | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 59 "src/comm/parser.mly"
                                          ( Syntax.Plus (e1, e2) )
# 371 "src/comm/parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 61 "src/comm/parser.mly"
                                          ( Syntax.Divide (e1, e2) )
# 387 "src/comm/parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | DONE | ELSE | END | EOF | EQUAL | IN | LESS | MINUS | OR | PLUS | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 60 "src/comm/parser.mly"
                                          ( Syntax.Minus (e1, e2) )
# 407 "src/comm/parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 58 "src/comm/parser.mly"
                                          ( Syntax.Times (e1, e2) )
# 423 "src/comm/parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | OR | RPAREN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.boolean) = 
# 69 "src/comm/parser.mly"
                                     ( Syntax.Less (e1, e2) )
# 447 "src/comm/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | AND | DO | OR | RPAREN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.boolean) = 
# 68 "src/comm/parser.mly"
                                      ( Syntax.Equal (e1, e2) )
# 477 "src/comm/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 | MenhirState1 | MenhirState5 | MenhirState31 | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LESS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
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
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | DONE | ELSE | END | EOF | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (
# 5 "src/comm/parser.mly"
       (string)
# 531 "src/comm/parser.ml"
            ))), _, (e : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 49 "src/comm/parser.mly"
                                   ( Syntax.Assign (x, e) )
# 536 "src/comm/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | DONE | ELSE | END | EOF | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 48 "src/comm/parser.mly"
                       ( Syntax.Print e )
# 566 "src/comm/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IF ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | LPAREN ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | NEW ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | PRINT ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | SKIP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | VARIABLE _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | REMAINDER ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.boolean) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (b : (Syntax.boolean))) = _menhir_stack in
            let _v : (Syntax.boolean) = 
# 73 "src/comm/parser.mly"
                            ( b )
# 643 "src/comm/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | DO | OR | RPAREN | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (b1 : (Syntax.boolean))), _, (b2 : (Syntax.boolean))) = _menhir_stack in
            let _v : (Syntax.boolean) = 
# 71 "src/comm/parser.mly"
                             ( Syntax.Or (b1, b2) )
# 665 "src/comm/parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (b1 : (Syntax.boolean))), _, (b2 : (Syntax.boolean))) = _menhir_stack in
        let _v : (Syntax.boolean) = 
# 70 "src/comm/parser.mly"
                              ( Syntax.And (b1, b2) )
# 681 "src/comm/parser.ml"
         in
        _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (b : (Syntax.boolean))) = _menhir_stack in
        let _v : (Syntax.boolean) = 
# 72 "src/comm/parser.mly"
                  ( Syntax.Not b )
# 691 "src/comm/parser.ml"
         in
        _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IF ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LPAREN ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | NEW ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | PRINT ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | SKIP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | VARIABLE _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
        | OR ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IF ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LPAREN ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | NEW ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | PRINT ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | SKIP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | VARIABLE _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_command : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.command) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IF ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LPAREN ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | NEW ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | PRINT ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | SKIP ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | VARIABLE _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
        | SEMICOLON ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (c1 : (Syntax.command))), _, (c2 : (Syntax.command))) = _menhir_stack in
        let _v : (Syntax.command) = 
# 50 "src/comm/parser.mly"
                                    ( Syntax.Sequence (c1, c2) )
# 820 "src/comm/parser.ml"
         in
        _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (b : (Syntax.boolean))), _, (c1 : (Syntax.command))), _, (c2 : (Syntax.command))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 52 "src/comm/parser.mly"
                                                     ( Syntax.Conditional (b, c1, c2) )
# 836 "src/comm/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | SEMICOLON ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (c : (Syntax.command))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 53 "src/comm/parser.mly"
                            ( c )
# 860 "src/comm/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | SEMICOLON ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
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
        | SEMICOLON ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | DONE | ELSE | END | EOF | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 5 "src/comm/parser.mly"
       (string)
# 883 "src/comm/parser.ml"
            ))), _, (e : (Syntax.expression))), _, (c : (Syntax.command))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 47 "src/comm/parser.mly"
                                                    ( Syntax.New(x, e, c) )
# 888 "src/comm/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
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
        | DONE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (b : (Syntax.boolean))), _, (c : (Syntax.command))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 51 "src/comm/parser.mly"
                                      ( Syntax.While (b, c) )
# 910 "src/comm/parser.ml"
             in
            _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v
        | SEMICOLON ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState66 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (c : (Syntax.command))) = _menhir_stack in
            let _v : (Syntax.command) = 
# 43 "src/comm/parser.mly"
                  ( c )
# 933 "src/comm/parser.ml"
             in
            (match _menhir_s with
            | MenhirState0 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (p : (Syntax.command)) = _v in
                let _v : (Syntax.command list) = 
# 40 "src/comm/parser.mly"
              ( [p] )
# 943 "src/comm/parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (Syntax.command list)) = _v in
                Obj.magic _1
            | MenhirState66 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (Syntax.command)) = _v in
                Obj.magic _1
            | _ ->
                _menhir_fail ())
        | SEMICOLON ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "src/comm/parser.mly"
       (string)
# 987 "src/comm/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 5 "src/comm/parser.mly"
       (string)
# 995 "src/comm/parser.ml"
    )) = _v in
    let _v : (Syntax.expression) = 
# 56 "src/comm/parser.mly"
                                          ( Syntax.Variable x )
# 1000 "src/comm/parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.boolean) = 
# 66 "src/comm/parser.mly"
         ( Syntax.True )
# 1011 "src/comm/parser.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "src/comm/parser.mly"
       (int)
# 1018 "src/comm/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 4 "src/comm/parser.mly"
       (int)
# 1026 "src/comm/parser.ml"
    )) = _v in
    let _v : (Syntax.expression) = 
# 57 "src/comm/parser.mly"
                                          ( Syntax.Numeral n )
# 1031 "src/comm/parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
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
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.boolean) = 
# 67 "src/comm/parser.mly"
          ( Syntax.False )
# 1088 "src/comm/parser.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "src/comm/parser.mly"
       (string)
# 1220 "src/comm/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NUMERAL _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | VARIABLE _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.command) = 
# 46 "src/comm/parser.mly"
           ( Syntax.Skip )
# 1256 "src/comm/parser.ml"
     in
    _menhir_goto_command _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARIABLE _v ->
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
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | NUMERAL _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | VARIABLE _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
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

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IF ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NEW ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | PRINT ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | SKIP ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VARIABLE _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NUMERAL _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VARIABLE _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

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

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command list) =
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
    | IF ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEW ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRINT ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SKIP ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VARIABLE _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.command) =
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
    | IF ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LPAREN ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | NEW ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | PRINT ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | SKIP ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | VARIABLE _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)

# 269 "<standard.mly>"
  

# 1442 "src/comm/parser.ml"
