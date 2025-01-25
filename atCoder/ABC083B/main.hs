someSums :: Int -> Int -> Int -> Int
someSums n a b = sum [i | i <- [1..n], a <= sum (map (read . return) (show i)) && sum (map (read . return) (show i)) <= b]

main :: IO ()
main = do
  [n, a, b] <- map read . words <$> getLine
  print $ someSums n a b