{--
Project Euler Question 2
Find the sum of all fibonacci numbers which do not
exceed 4 million
--}

fibs :: [Integer]
fibs = 0 : 1 : [a + b | (a, b) <- zip fibs (tail fibs)]

answer :: Integer
answer = sumcore fibs 0
  where sumcore (x:xs) acc | x > 4000000 = acc
                           | even x      = sumcore xs (acc+x)
                           | otherwise   = sumcore xs acc 