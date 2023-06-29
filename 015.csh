#!/bin/csh

set arreglo = ()
@ i = 0
while ($i < 300)
  @ numero = $RANDOM % 1000 + 1
  set arreglo = ($arreglo $numero)
  @ i++
end

set menor = $arreglo[1]
set mayor = $arreglo[1]

foreach num ($arreglo)
  if ($num < $menor) then
    set menor = $num
  endif

  if ($num > $mayor) then
    set mayor = $num
  endif
end

echo "$menor"
echo "$mayor"

