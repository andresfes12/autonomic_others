#!/bin/bash

arrays=(
  (5 2 7)
  (10 4 8)
  (1 6 3)
  (9 2 5)
)

for arr in "${arrays[@]}"; do
  sorted_arr=($(echo "${arr[@]}" | tr ' ' '\n' | sort -n))
  middle_value=${sorted_arr[1]}
  echo $middle_value
done
