sumar :: Int -> Int -> Int
sumar a b = a + b

main :: IO ()
main = do
  let a = 5 
      b = 3 
      resultado = sumar a b
  putStrLn (show resultado)
