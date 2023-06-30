BEGIN {
    arrays[1] = "54 21 71"
    arrays[2] = "14 49 8"
    arrays[3] = "108 46 63"
    arrays[4] = "59 22 50"

    for (i = 1; i <= 4; i++) {
        split(arrays[i], arr, " ")
        asort(arr)
        middleValue = arr[2]
        print middleValue
    }
}
