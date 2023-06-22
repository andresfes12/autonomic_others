module Main

import Data.Vect


sumArreg : Vect n Int -> Vect n Int -> Vect n Int
sumArreg [] [] = []
sumArreg (x :: xs) (y :: ys) = (x + y) :: sumArreg xs ys


main : IO ()
main = do
  let arr1 : Vect 5 Int = [1, 2, 3, 4, 5]
  let arr2 : Vect 5 Int = [6, 7, 8, 9, 10]
  let resul : Vect 5 Int = sumArreg arr1 arr2
  printLn result
