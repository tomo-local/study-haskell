fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main = do
  print $ fibonacci 0
  print $ fibonacci 1
  print $ fibonacci 2
  print $ fibonacci 3

  print $ fibonacci 10
