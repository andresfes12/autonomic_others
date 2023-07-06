#!/usr/bin/awk -f

function sum_arithmetic_sequence(A, B, N) {
  sum = 0
  for (i = 0; i < N; i++) {
    term = A + i*B
    sum += term
    printf "%s ", term
  }
  print ""
}

printf "Enter the number of test cases: "
getline num_cases

for (i = 1; i <= num_cases; i++) {
  printf "Enter the values for test case %d: ", i
  getline input
  split(input, values, " ")
  A = values[1]
  B = values[2]
  N = values[3]
  sum_arithmetic_sequence(A, B, N)
}

