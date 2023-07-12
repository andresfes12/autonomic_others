program ArraySum
  implicit none
  integer, dimension(8) :: numbers = [1, 2, 3, 4, 5, 6, 7, 8]
  integer :: sum, i

  sum = 0
  do i = 1, 8
     sum = sum + numbers(i)
  end do

  print *, sum

end program ArraySum

