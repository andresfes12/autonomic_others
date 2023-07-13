compare_lists([], [], []).
compare_lists([X|Xs], [Y|Ys], [Min|MinList]) :-
    Min is min(X, Y),
    compare_lists(Xs, Ys, MinList).
