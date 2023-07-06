#!/bin/bash

sum_arithmetic_sequence() {
  A=$1
  B=$2
  N=$3
  sum=0
  
  for ((i = 0; i < N; i++)); do
    term=$((A + i*B))
    sum=$((sum + term))
    echo -n "$term "
  done
  echo
}

read -p "Enter the number of test cases: " num_cases

for ((i = 1; i <= num_cases; i++)); do
  read -p "Enter the values for test case $i: " A B N
  
  sum_arithmetic_sequence $A $B $N
done
