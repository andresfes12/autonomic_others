:- module rounding.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module string.

:- pred read_input(int::out, list({float, float})::out, io::di, io::uo) is det.
read_input(NumCases, Cases, !IO) :-
    io.read_line_as_string(Result, !IO),
    ( Result = ok(Line),
        string.to_int(string.strip(Line), NumCases)
    ; Result = eof,
        NumCases = 0
    ; Result = error(_),
        NumCases = 0
    ),
    read_cases(NumCases, Cases, !IO).

:- pred read_cases(int::in, list({float, float})::out, io::di, io::uo) is det.
read_cases(0, [], !IO).
read_cases(N, [{A, B} | Cases], !IO) :-
    io.read_line_as_string(Result, !IO),
    ( Result = ok(Line),
        string.words(string.strip(Line), Words),
        ( Words = [WordA, WordB | _],
            string.to_float(WordA, A),
            string.to_float(WordB, B),
            N1 is N - 1,
            read_cases(N1, Cases, !IO)
        ; Words = [_ | _],
            io.write_string("Invalid input\n", !IO),
            read_cases(N, Cases, !IO)
        )
    ; Result = eof,
        io.write_string("Unexpected end of input\n", !IO),
        read_cases(N, Cases, !IO)
    ; Result = error(_),
        io.write_string("Error reading input\n", !IO),
        read_cases(N, Cases, !IO)
    ).

:- pred round_number(float::in, int::out) is det.
round_number(Number, Rounded) :-
    ( Number >= 0.0 ->
        Rounded = float.round_to_int(Number + 0.5)
    ;
        Rounded = float.round_to_int(Number - 0.5)
    ).

:- pred solve_cases(list({float, float})::in, io::di, io::uo) is det.
solve_cases([], !IO).
solve_cases([{A, B} | Cases], !IO) :-
    Result = float.round_to_int(A / B),
    io.write_int(Result, !IO),
    io.write_string(" ", !IO),
    solve_cases(Cases, !IO).

main(!IO) :-
    read_input(NumCases, Cases, !IO),
    solve_cases(Cases, !IO).

