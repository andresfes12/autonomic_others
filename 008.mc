:- module arithmetic_sequence.

:- interface.
:- import_module io.

:- pred sum_arithmetic_sequence(int, int, int, io::di, io::uo) is det.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module int.

sum_arithmetic_sequence(A, B, N, !IO) :-
    Sum = sum_arithmetic_sequence_recursive(A, B, N, 0),
    io.write_int(Sum, !IO),
    io.nl(!IO).

:- func sum_arithmetic_sequence_recursive(int, int, int, int) = int.
sum_arithmetic_sequence_recursive(_, _, 0, Acc) = Acc.
sum_arithmetic_sequence_recursive(A, B, N, Acc) =
    sum_arithmetic_sequence_recursive(A, B, N - 1, Acc + A + (N - 1) * B).

main(!IO) :-
    io.write_string("Enter the number of test cases: ", !IO),
    io.read_int(Result, !IO),
    (
        Result = ok(NumCases),
        loop(1, NumCases, !IO)
    ;
        Result = eof
    ;
        Result = error(Error),
        io.write_string("Error: ", !IO),
        io.write_string(Error, !IO)
    ).

:- pred loop(int, int, io::di, io::uo) is det.
loop(I, NumCases, !IO) :-
    ( I =< NumCases ->
        io.format("Enter the values for test case %d: ", [i(I)], !IO),
        io.read_line_as_string(Result, !IO),
        (
            Result = ok(Input),
            string.words(Input, " ", Words),
            ( Words = [A, B, N | _] ->
                int.det_from_string(A, AInt),
                int.det_from_string(B, BInt),
                int.det_from_string(N, NInt),
                sum_arithmetic_sequence(AInt, BInt, NInt, !IO)
            ;
                io.write_string("Invalid input\n", !IO)
            ),
            loop(I + 1, NumCases, !IO)
        ;
            Result = eof
        ;
            Result = error(Error),
            io.write_string("Error: ", !IO),
            io.write_string(Error, !IO)
        )
    ;
        true
    ).

:- func i(int) = string.
i(I) = int_to_string(I).

:- end_module arithmetic_sequence.

