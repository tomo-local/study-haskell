-- Top level variable
a = 1
b = 2
c = a + b

main = do
  print c

-- Local variable
  where
    a = 10
    b = 20
    c = a + b
