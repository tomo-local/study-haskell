import Data.List (sort)

main :: IO ()
main = do
  n <- readLn :: IO Int
  cards <- fmap (map read . words) getLine :: IO [Int]

  let sortedCards = reverse $ sort cards
      aliceScore = sum [sortedCards !! i | i <- [0, 2 .. (n - 1)]]
      bobScore = sum [sortedCards !! i | i <- [1, 3 .. (n - 1)]]
      result = aliceScore - bobScore

  print result
