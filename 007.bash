#!/bin/bash

farenjai=(32 68 86 104 122)
celsius=()

function convert_to_celsius {
    local fahrenheit=$1
    local celsius=$(echo "scale=2; ($fahrenheit - 32) * 5/9" | bc)
    echo $celsius
}

for temp in "${farenjai[@]}"
do
    celsius_temp=$(convert_to_celsius $temp)
    celsius+=($celsius_temp)
done

for temp in "${celsius[@]}"
do
    echo $temp
done

