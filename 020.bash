#!/bin/bash

count_vowels() {
  line=$1
  line=${line,,}

  count=0
  for ((i = 0; i < ${#line}; i++)); do
    char=${line:i:1}
    if [[ $char == "a" || $char == "e" || $char == "i" || $char == "o" || $char == "u" || $char == "y" ]]; then
      ((count++))
    fi
  done

  echo -n "$count "
}

read cases
for ((i = 0; i < cases; i++)); do
  read line
  vowels=$(count_vowels "$line")
  echo -n "$vowels"
done

echo ""
