#!/bin/bash

read num_cases

for ((i=0; i<num_cases; i++)); do
  read -r a b
  result=$(echo "scale=0; ($a/$b)+0.5" | bc)
  echo -n "$result "
done
echo

