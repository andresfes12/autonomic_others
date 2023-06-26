-module(min_of_three).
-export([min_of_three/3, compare_arrays/3, main/0]).

min_of_three(A, B, C) ->
    if
        A =< B, A =< C -> A;
        B =< A, B =< C -> B;
        true -> C
    end.

compare_arrays([], [], []) ->
    [];
compare_arrays([X | Xs], [Y | Ys], [Z | Zs]) ->
    [min_of_three(X, Y, Z) | compare_arrays(Xs, Ys, Zs)].

main() ->
    A = [3, 7, 12, 1, 2],
    B = [2, 3, 15, 8, 10],
    C = [5, 2, 9, 11, 4],

    Mins = compare_arrays(A, B, C),

    lists:foreach(fun(X) -> io:format("~w ", [X]) end, Mins),
    io:nl().
