-module(count_vowels).
-export([main/0, count_vowels/1]).

main() ->
    {ok, CasesStr} = io:get_line(""),
    Cases = list_to_integer(string:trim(CasesStr)),
    loop(Cases).

loop(0) ->
    ok;
loop(N) ->
    {ok, Line} = io:get_line(""),
    Vowels = count_vowels(string:strip(Line)),
    io:format("~w ", [Vowels]),
    loop(N-1).

count_vowels(Line) ->
    LowercaseLine = string:to_lower(Line),
    count_vowels(LowercaseLine, 0).

count_vowels([], Count) ->
    Count;
count_vowels([H|T], Count) ->
    case lists:member(H, [$a, $e, $i, $o, $u, $y]) of
        true -> count_vowels(T, Count + 1);
        false -> count_vowels(T, Count)
    end.
