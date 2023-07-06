#!/bin/csh

set num_cases = $<
set i = 1

while ($i <= $num_cases)
  echo -n "Enter the values for test case $i: "
  set input = "$<"
  set A = (echo $input | awk '{print $1}')
  set B = (echo $input | awk '{print $2}')
  set N = (echo $input | awk '{print $3}')

  set sum = 0
  set j = 0
  while ($j < $N)
    set term = `expr $A + $j \* $B`
    set sum = `expr $sum + $term`
    echo -n "$term "
    @ j = $j + 1
  end
  echo ""

  @ i = $i + 1
end
