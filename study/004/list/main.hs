main = do
  -- list
  print [1, 2, 3]

  print $ [1, 2, 3] !! 1

  print [1..10]

  print ['a'..'z']

  print $ [1..10] ++ [11..20]

  print $ 1:[2..10]

  print $ 1:2:3:4:5:[6..10]