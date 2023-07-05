#!/bin/csh

count_vowels() {
  set line = $1
  set line = `echo $line | tr '[:upper:]' '[:lower:]'`

  set count = 0
  foreach char ( `echo $line | grep -o .` )
    if ( "$char" == "a" || "$char" == "e" || "$char" == "i" || "$char" == "o" || "$char" == "u" || "$char" == "y" ) then
      @ count++
    endif
  end

  echo -n "$count "
}

set cases = $<

@ i = 0
while ( $i < $cases )
  set line = $<
  set vowels = `count_vowels "$line"`
  echo -n "$vowels"

  @ i++
end

echo ""
