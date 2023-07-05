count-vowels: func [line [string!]] [
    line: lowercase line
    vowels: 0
    foreach char line [
        if any [
            char = #"a" char = #"e" char = #"i"
            char = #"o" char = #"u" char = #"y"
        ] [
            vowels: vowels + 1
        ]
    ]
    vowels
]

main: func [] [
    cases: to-integer input
    repeat cases [
        line: trim input
        vowels: count-vowels line
        write vowels
        write " "
    ]
    print ""
]

main
