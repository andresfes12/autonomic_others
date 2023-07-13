fn compare-vectors [vector1 vector2]{
    each [v1 v2] (zip $vector1 $vector2) {
        put (min $v1 $v2)
    }
}

set vector1 [3 9 2 5]
set vector2 [6 4 8 1]

compare-vectors $vector1 $vector2
