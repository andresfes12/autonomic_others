:- module count_vowels.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module char, int, string.

:- pred count_vowels(string::in, int::out) is det.
count_vowels(Line, Count) :-
    count_vowels_2(Line, 0, Count).

:- pred count_vowels_2(string::in, int::in, int::out) is det.
count_vowels_2("", Count, Count).
count_vowels_2(Line, CountIn, CountOut) :-
    string.det_index1(Line, Char, Rest),
    ( is_vowel(Char) ->
        CountNext = CountIn + 1
    ;
        CountNext = CountIn
    ),
    count_vowels_2(Rest, CountNext, CountOut).

:- pred is_vowel(char::in) is semidet.
is_vowel(Char) :-
    Char = 'a' ; Char = 'e' ; Char = 'i' ; Char = 'o' ; Char = 'u' ; Char = 'y'.

main(!IO) :-
    io.read_line_as_string(Result, !IO),
    (
        Result = ok(CasesStr),
        MaybeCases = int.det_from_string(CasesStr),
        (
            MaybeCases = ok(Cases),
            loop(Cases, 0, !IO)
        ;
            MaybeCases = error(_),
            io.write_string("Invalid input: number of cases\n", !IO)
        )
    ;
        Result = eof,
        io.write_string("Unexpected end of input\n", !IO)
    ;
        Result = error(Error),
        io.write_string(Error, !IO)
    ).

:- pred loop(int::in, int::in, io::di, io::uo) is det.
loop(Cases, Index, !IO) :-
    ( Index < Cases ->
        io.read_line_as_string(Result, !IO),
        (
            Result = ok(Line),
            Count = count_vowels(Line),
            io.format("%d ", [i(Count)], !IO),
            loop(Cases, Index + 1, !IO)
        ;
            Result = eof,
            io.write_string("Unexpected end of input\n", !IO)
        ;
            Result = error(Error),
            io.write_string(Error, !IO)
        )
    ;
        Index = Cases
    ;
        Index > Cases,
        io.write_string("Too many lines of input\n", !IO)
    ).
