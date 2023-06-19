:- pred sum(int, int, int).
:- mode sum(in , in, out) is det.

sum(A, B, result) :-
    result = A + B
