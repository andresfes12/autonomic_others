sum-arithmetic-sequence: func [A B N] [
    sum: 0
    repeat i N [
        term: A + i * B
        sum: sum + term
        write term
        write " "
    ]
    print ""
]

main: func [] [
    num-cases: ask "Enter the number of test cases: "
    
    repeat i num-cases [
        input: ask rejoin ["Enter the values for test case " i ": "]
        values: split input " "
        A: to-integer values/1
        B: to-integer values/2
        N: to-integer values/3
        sum-arithmetic-sequence A B N
    ]
]

main
