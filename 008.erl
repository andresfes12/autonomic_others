sum_arithmetic_sequence(A, B, N) ->
    lists:foreach(fun(I) -> io:write(A + (I - 1) * B), io:write(" ") end, lists:seq(1, N)),
    io:nl().

main() ->
    {ok, NumCases} = io:fread("Enter the number of test cases: ", "~d"),
    loop(1, NumCases).

loop(Current, NumCases) when Current =< NumCases ->
    io:format("Enter the values for test case ~w: ", [Current]),
    {ok, Input} = io:fread("", "~d ~d ~d"),
    [A, B, N] = Input,
    sum_arithmetic_sequence(A, B, N),
    loop(Current + 1, NumCases);
loop(_, _) ->
    ok.
