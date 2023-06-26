#!/bin/bash

min_of_three() {
    if [[ $1 -le $2 && $1 -le $3 ]]; then
        echo $1
    elif [[ $2 -le $1 && $2 -le $3 ]]; then
        echo $2
    else
        echo $3
    fi
}

read num_cases

for ((i = 0; i < num_cases; i++)); do
    read -r a b c
    min=$(min_of_three "$a" "$b" "$c")
    echo "$min"
done


