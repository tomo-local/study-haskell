fibonacci n = do
  if n == 0 then 0

  else if n == 1 then 1

  else fibonacci (n - 1) + fibonacci (n - 2)




main = do
  print $ fibonacci 0
  print $ fibonacci 1
  print $ fibonacci 2
  print $ fibonacci 3

  print $ fibonacci 10