module Main

maxMin : (x : Int) -> (y : Int) -> (max : Int, min : Int)
maxMin x y = if x >= y then (x, y) else (y, x)

main : IO ()
main = do
  putStrLn "Ingrese el primer número:"
  xStr <- getLine
  let x = parseNum xStr
  putStrLn "Ingrese el segundo número:"
  yStr <- getLine
  let y = parseNum yStr
  let (max, min) = maxMin x y
  putStrLn ("El número mayor es: " ++ show max)
  putStrLn ("El número menor es: " ++ show min)

parseNum : String -> Int
parseNum str = case (readMaybe str :: Maybe Int) of
                 Just n => n
                 Nothing => 0
