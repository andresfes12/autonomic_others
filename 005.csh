#!/bin/csh

set numCases = $<

@ i = 0
while ($i < $numCases)
    @ i++
    set input = ($<)
    set inputList = ($input:as/ /\n/g)

    set a = $inputList[1]
    set b = $inputList[2]
    set c = $inputList[3]

    if ($a <= $b && $a <= $c) then
        echo $a
    else if ($b <= $a && $b <= $c) then
        echo $b
    else
        echo $c
    endif
end

