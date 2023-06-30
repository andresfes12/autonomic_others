:- module fahrenheit_to_celsius.

:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module list.

% Predicado para convertir una temperatura en grados Fahrenheit a grados Celsius
:- pred fahrenheit_to_celsius(float::in, float::out) is det.
fahrenheit_to_celsius(F, C) :-
    C = (F - 32.0) * (5.0 / 9.0).

% Predicado para convertir una lista de temperaturas en grados Fahrenheit a grados Celsius
:- pred convert_temperatures(list(float)::in) is det.
convert_temperatures(Temperatures) :-
    foldl(convert_temperature, Temperatures, io.write_string("\n")).

:- pred convert_temperature(float::in, io::di, io::uo) is det.
convert_temperature(Temperature, !IO) :-
    fahrenheit_to_celsius(Temperature, Celsius),
    io.format("%.2f ", [f(Celsius)], !IO).

main(!IO) :-
    io.read_int(N, !IO),
    read_temperatures(N, Temperatures, !IO),
    convert_temperatures(Temperatures).

:- pred read_temperatures(int::in, list(float)::out, io::di, io::uo) is det.
read_temperatures(N, Temperatures, !IO) :-
    ( if N > 0 then
        io.read_float(Temperature, !IO),
        Temperatures = [Temperature | RestTemperatures],
        read_temperatures(N - 1, RestTemperatures, !IO)
      else
        Temperatures = []
    ).

:- pred mercury_main(io::di, io::uo) is cc_multi.
mercury_main(!IO) :- main(!IO).
