fact n = case n of
  0 -> 1
  _ | n > 0 -> n * fact (n - 1)
  _ -> error "n must be non-negative"

main = do
  print $ fact 5
  print $ fact 0
  print $ fact (-1)