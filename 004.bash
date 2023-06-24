#!/bin/bash

function min_of_two {
  if (( $1 <= $2 )); then
    echo $1
  else
    echo $2
  fi
}

read n

for (( i=0; i<n; i++ )); do
  read num1 num2
  result=$(min_of_two $num1 $num2)
  echo -n "$result "
done

echo
