:- import_module int.

:- func min_of_three(int, int, int) = int.
min_of_three(A, B, C) = Min :-
    ( if A =< B, A =< C then
        Min = A
    else if B =< A, B =< C then
        Min = B
    else
        Min = C
    ).

:- pred compare_arrays(list(int)::in, list(int)::in, list(int)::in, list(int)::out) is det.
compare_arrays([], [], [], []).
compare_arrays([X | Xs], [Y | Ys], [Z | Zs], [Min | Mins]) :-
    Min = min_of_three(X, Y, Z),
    compare_arrays(Xs, Ys, Zs, Mins).

:- pred main(io::di, io::uo) is det.
main(!IO) :-
    % Matrices de ejemplo
    A = [3, 7, 12, 1, 2],
    B = [2, 3, 15, 8, 10],
    C = [5, 2, 9, 11, 4],

    % Comparar las matrices
    compare_arrays(A, B, C, Mins),

    io.write_list(Mins, " ", io.stdout, !IO),
    io.nl(io.stdout, !IO).
