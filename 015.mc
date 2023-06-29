:- module find_min_max.

:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module list, solutions.

:- func generate_array = list(int).
generate_array = Result :-
    Result = list.map_foldl(generate_random_number, list.init, 0, 300).

:- func generate_random_number(int, int) = int.
generate_random_number(_, _) = RandomNumber :-
    RandomNumber = random.uniform_between(1, 1000).

:- pred find_min_max(list(int)::in, int::out, int::out) is det.
find_min_max(Array, Min, Max) :-
    Min = foldl(func(X, Y) = min(X, Y), Array, list.det_index1(Array)),
    Max = foldl(func(X, Y) = max(X, Y), Array, list.det_index1(Array)).

main(!IO) :-
    Array = generate_array,
    find_min_max(Array, Min, Max),
    io.write_int(Min, !IO),
    io.nl(!IO),
    io.write_int(Max, !IO),
    io.nl(!IO).

