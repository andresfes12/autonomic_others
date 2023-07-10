program suma
    implicit none
    integer :: number1, number2, sum
    
    read(*, *) number1
    read(*, *) number2
    
    sum = number1 + number2
    
    write(*, *) sum
    
end program suma

