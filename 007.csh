set farenjai = (32 68 86 104 122)

set i = 1
while ($i <= 5)
  @ celsius_temp = ($farenjai[$i] - 32) * 5 / 9
  set celsius = ($celsius_temp)
  echo $celsius
  @ i = $i + 1
end

