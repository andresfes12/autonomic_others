round-number: func [number] [
    if number >= 0 [
        round number + 0.5
    ] else [
        round number - 0.5
    ]
]

solve-cases: func [cases] [
    foreach [a b] cases [
        result: round-number a / b
        prin result " "
    ]
    print ""
]

main: func [] [
    num-cases: to-integer input
    cases: copy []
    
    repeat num-cases [
        input [a b]
        append cases reduce [a b]
    ]
    
    solve-cases cases
]

main
