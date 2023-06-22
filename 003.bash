#!/bin/bash


array1=(10 20 30)
array2=(5 15 25)

length=${#array1[@]}
for ((i = 0; i < length; i++)); do
    sum=$((array1[i] + array2[i]))
    echo $sum
done
