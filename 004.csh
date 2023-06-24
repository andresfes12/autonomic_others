#!/bin/csh

set n = $1
shift

@ i = 0
while ($i < $n)
  set num1 = $1
  set num2 = $2
  if ($num1 <= $num2) then
    echo -n "$num1 "
  else
    echo -n "$num2 "
  endif

  shift 2
  @ i = $i + 1
end

echo
