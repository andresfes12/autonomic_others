#!/bin/csh

set arrays = ("77 54 23" "79 41 18" "11 64 23" "99 32 51")

foreach array ($arrays)
    set sorted = `echo $array | tr " " "\n" | sort -n`
    set middleIndex = `expr $#sorted / 2`
    set middleValue = $sorted[$middleIndex]
    echo $middleValue
end
