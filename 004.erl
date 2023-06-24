-module(main).
-export([max_min/2, start/0]).

max_min(X, Y) ->
    if
        X >= Y ->
            {X, Y};
        true ->
            {Y, X}
    end.

start() ->
    io:format("Ingrese el primer número: "),
    {ok, [X]} = io:fread("~d", []),
    io:format("Ingrese el segundo número: "),
    {ok, [Y]} = io:fread("~d", []),
    {Max, Min} = max_min(X, Y),
    io:format("El número mayor es: ~w~n", [Max]),
    io:format("El número menor es: ~w~n", [Min]).
