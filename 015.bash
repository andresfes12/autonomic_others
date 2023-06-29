#!/bin/bash

arreglo=()
for ((i=0; i<300; i++))
do
    numero=$((RANDOM % 1000 + 1))
    arreglo+=($numero)
done

menor=${arreglo[0]}
mayor=${arreglo[0]}

for num in "${arreglo[@]}"
do
  if ((num < menor)); then
    menor=$num
  fi
  
  if ((num > mayor)); then
    mayor=$num
  fi
done

echo " $menor"
echo " $mayor"



