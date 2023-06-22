#!/bin/bash


array1=(10 20 30)
array2=(5 15 25)

if [ ${#array1[@]} -ne ${#array2[@]} ]; then
    echo "Las matrices no tienen la misma longitud"
    exit 1
fi


length=${#array1[@]}
for ((i = 0; i < length; i++)); do
    sum=$((array1[i] + array2[i]))
    echo "Suma en la posición $i: $sum"
done
