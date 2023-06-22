sum_lists(List1, List2) ->
    sum_lists(List1, List2, []).

sum_lists([], [], Acc) ->
    lists:reverse(Acc);
sum_lists([X1 | Rest1], [X2 | Rest2], Acc) ->
    Sum = X1 + X2,
    sum_lists(Rest1, Rest2, [Sum | Acc]).
