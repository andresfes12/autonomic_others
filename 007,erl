-module(conversion).
-export([fahrenheit_to_celsius/1, convert_temperatures/1, main/0]).

fahrenheit_to_celsius(F) ->
    (F - 32) * 5 / 9.

convert_temperatures([]) ->
    ok;
convert_temperatures([Temp | Rest]) ->
    Celsius = fahrenheit_to_celsius(Temp),
    io:format("~.2f ", [Celsius]),
    convert_temperatures(Rest).

main() ->
    NumTemps = list_to_integer(io:get_line("")),
    TempsList = read_temperatures(NumTemps),
    convert_temperatures(TempsList).

read_temperatures(0) ->
    [];
read_temperatures(N) ->
    [list_to_float(io:get_line("")) | read_temperatures(N-1)].


