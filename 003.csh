#!/bin/csh

set array1 = (10 20 30)
set array2 = (5 15 25)

@ length = $#array1

if ($#array1 != $#array2) then
  echo "error"
  exit 1
endif

@ i = 1
while ($i <= $length)
  @ sum = $array1[$i] + $array2[$i]
  echo $sum
  @ i = $i + 1
end
