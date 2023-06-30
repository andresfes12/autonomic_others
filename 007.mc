:- module max_candies.

:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module list.

:- func max_candies(list(int)) = int.
max_candies(Isles) = MaxCandies :-
    max_candies_2(Isles, MaxCandies).

:- func max_candies_2(list(int), int) = int.
max_candies_2([Candy], Candy).
max_candies_2([Candy1, Candy2 | Isles], MaxCandies) =
    max(max_candies_2([Candy2 | Isles], MaxCandies),
        max_candies_2(Isles, MaxCandies + Candy1)).

main(!IO) :-
    io.read_int(IO, NumTestCasesResult),
    ( NumTestCasesResult = ok(NumTestCases),
        io.read_list(NumTestCases, io.read_int, IslesResult, !IO),
        ( IslesResult = ok(Isles),
            list.map_foldl(max_candies, Isles, MaxCandiesList),
            list.foldl(print_candies, MaxCandiesList, !IO)
        ; IslesResult = error(_),
            io.write_string("Error: Invalid input for test cases\n", !IO)
        )
    ; NumTestCasesResult = eof,
        io.write_string("Error: Unexpected end of input\n", !IO)
    ; NumTestCasesResult = error(_),
        io.write_string("Error: Invalid input for number of test cases\n", !IO)
    ).

:- pred print_candies(int::in, io::di, io::uo) is det.
print_candies(Candies, !IO) :-
    io.write_int(Candies, !IO),
    io.write_char(' ', !IO).

:- end_module.
