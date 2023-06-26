module MinOfThree

minOfThree : Int -> Int -> Int -> Int
minOfThree a b c =
  if a <= b && a <= c then
    a
  else if b <= a && b <= c then
    b
  else
    c

compareArrays : List Int -> List Int -> List Int -> List Int
compareArrays [] [] [] = []
compareArrays (x :: xs) (y :: ys) (z :: zs) =
  minOfThree x y z :: compareArrays xs ys zs

main : IO ()
main =
  let
    a : List Int
    a = [3, 7, 12, 1, 2]

    b : List Int
    b = [2, 3, 15, 8, 10]

    c : List Int
    c = [5, 2, 9, 11, 4]

    mins : List Int
    mins = compareArrays a b c
  in
    mapM_ (printStrLn . show) mins
