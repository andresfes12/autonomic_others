:- module main.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module list, string.

:- pred find_middle(list(int)::in, int::out) is det.
find_middle(List, Middle) :-
    sort(List, Sorted),
    length(Sorted, Length),
    MiddleIndex = (Length + 1) // 2,
    Middle = list.det_index1(MiddleIndex, Sorted).

main(!IO) :-
    io.read_int(IO, NumCasesResult),
    ( NumCasesResult = ok(NumCases),
        process_cases(NumCases, !IO)
    ; NumCasesResult = eof,
        true
    ; NumCasesResult = error(Error),
        io.format("Error: %s\n", [s(error_message(Error))], !IO)
    ).

:- pred process_cases(int::in, io::di, io::uo) is det.
process_cases(NumCases, !IO) :-
    loop(NumCases, [], Results),
    print_results(Results, !IO).

:- pred loop(int::in, list(int)::in, list(int)::out) is det.
loop(N, Acc, Results) :-
    ( N > 0 ->
        io.read_line_as_string(Result, !IO),
        ( Result = ok(Line),
            ( parse_line(Line, Array),
                find_middle(Array, Middle),
                loop(N - 1, [Middle | Acc], Results)
            ; parse_line_error,
                io.format("Error: Invalid input format\n", [], !IO),
                loop(N, Acc, Results)
            )
        ; Result = eof,
            Results = reverse(Acc)
        ; Result = error(Error),
            io.format("Error: %s\n", [s(error_message(Error))], !IO),
            loop(N, Acc, Results)
        )
    ; N = 0,
        Results = reverse(Acc)
    ).

:- pred parse_line(string::in, list(int)::out) is semidet.
parse_line(Line, Array) :-
    words(Line, Words),
    parse_words(Words, Array).

:- func words(string) = list(string).
words(String) = list.filter((pred(S::in) is semidet :- not string.is_empty(S)), Words) :-
    Words = string.words(String).

:- pred parse_words(list(string)::in, list(int)::out) is semidet.
parse_words([], []).
parse_words([Word | Words], [Int | Ints]) :-
    string.to_int(Word, IntResult),
    ( IntResult = ok(Int),
        parse_words(Words, Ints)
    ; IntResult = error(_),
        false
    ).

:- pred print_results(list(int)::in, io::di, io::uo) is det.
print_results([], !IO).
print_results([Result | Results], !IO) :-
    io.write(Result, !IO),
    io.nl(!IO),
    print_results(Results, !IO).

