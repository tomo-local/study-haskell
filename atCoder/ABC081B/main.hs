action :: [Int] -> Int
action a
  | all even a = action (map (`div` 2) a) + 1
  | otherwise = 0

main :: IO ()
main = do
  _ <- getLine
  a <- map read . words <$> getLine
  print $ action a
