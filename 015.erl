-module(find_min_max).
-export([generate_array/0, find_min_max/1, main/0]).

generate_array() ->
    generate_array(300, []).

generate_array(0, Acc) ->
    lists:reverse(Acc);
generate_array(N, Acc) ->
    RandomNumber = random:uniform(1000),
    generate_array(N - 1, [RandomNumber | Acc]).

find_min_max([]) ->
    {0, 0};
find_min_max([X | Xs]) ->
    {Min, Max} = find_min_max(Xs, X, X),
    {Min, Max}.

find_min_max([], Min, Max) ->
    {Min, Max};
find_min_max([X | Xs], Min, Max) ->
    NewMin = if X < Min -> X; true -> Min end,
    NewMax = if X > Max -> X; true -> Max end,
    find_min_max(Xs, NewMin, NewMax).

main() ->
    Array = generate_array(),
    {Min, Max} = find_min_max(Array),
    io:format("El número menor es: ~p~n", [Min]),
    io:format("El número mayor es: ~p~n", [Max]).
