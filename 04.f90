program comparar_arreglos
    implicit none
    
    integer, dimension(4) :: arreglo1 = [5, 2, 7, 1]
    integer, dimension(4) :: arreglo2 = [3, 6, 4, 9]
    integer :: i
    
    do i = 1, 4
        if (arreglo1(i) < arreglo2(i)) then
            write(*,*) "Posición", i, ": ", arreglo1(i)
        else
            write(*,*) "Posición", i, ": ", arreglo2(i)
        end if
    end do
    
end program comparar_arreglos

