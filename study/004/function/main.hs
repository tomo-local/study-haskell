f x = x + 1
add x y = x + y

main = do
  print (f 4)
  print $ f 10

  print $ add 1 2
  print $ 3 `add` 4

  print $ 1 + 2
  print $ (+) 1 2

  print $ 1 `add` 2
  print $ add 1 (f 2)