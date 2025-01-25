main :: IO ()

solve :: Int -> Int -> Int -> Int -> Int
solve a b c x = length [1 | i <- [0..a], j <- [0..b], k <- [0..c], 500*i + 100*j + 50*k == x]

main = do
  a <- readLn
  b <- readLn
  c <- readLn
  x <- readLn
  print $ solve a b c x