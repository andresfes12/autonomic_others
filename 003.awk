BEGIN {
    
    array1[1] = 10
    array1[2] = 20
    array1[3] = 30
    
    array2[1] = 5
    array2[2] = 15
    array2[3] = 25
}


{
    for (i = 1; i <= 3; i++) {
        sum[i] = array1[i] + array2[i]
        print sum[i]
    }
}
