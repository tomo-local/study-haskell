
import Text.Printf (printf)
import Language.Haskell.TH.Ppr (pprString)

printFizzBuzz :: Int -> IO ()
printFizzBuzz n = mapM_ (\(i, result) -> printf "[%0*d]: %s" maxDigits i result >> putStrLn "") numberedResults
    where
      -- fizzBuzz results
        numberedResults = zip [1..n] (map fizzBuzz [1..n])
      -- maximum number of digits
        maxDigits = length (show n)

fizzBuzz :: Int -> String
fizzBuzz n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0  = "Fizz"
  | n `mod` 5 == 0  = "Buzz"
  | otherwise = " "

main :: IO ()
main = do
  putStrLn "How long? :"
  num :: Int <- readLn
  putStrLn "================"
  printFizzBuzz num
  putStrLn "================"

