f a = if a == 1 then "a is 1" else "a is not 1"

f_2 0 = "zero"
f_2 _ = "other"

main = do
  -- if a == 1 then putStrLn "a is 1" else putStrLn "a is not 1"
  -- print $ if a == 1 then "a is 1" else "a is not 1"
  print $ f 1
  print $ f 0

  print $ f_2 0
  print $ f_2 1