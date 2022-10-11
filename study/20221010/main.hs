fact n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fact (n-2)+ fact(n-1)

fact2 n = case n of
    0 -> 0
    1 -> 1
    _ | n > 1 ->  fact2 (n-2)+ fact2(n-1)

length' [] = 0
length' (_:xs) = 1 + length' xs

sum' [] = 0
sum' (x:xs) = x + sum' xs

product' [] = 1
product' (x:xs) = x * product' xs

take' _ [] = []
take' n _ | n < 1 = []
take' n (x:xs) = x : take'( n - 1 ) xs

main = do
  print $ product' [1, 2, 3]
