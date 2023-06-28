#!/bin/csh

set num_cases = $<

while ($num_cases > 0)
    set a = $< # Leer primer número
    set b = $< # Leer segundo número

    @ result = $a / $b + 0.5
    @ rounded = round($result)

    echo -n "$rounded "

    @ num_cases--
end

echo ""
