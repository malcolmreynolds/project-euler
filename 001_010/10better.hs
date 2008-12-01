{--
Project Euler question 10

Much better solution mathematically, but efficiency doesn't match C..
--}

sieveAns :: [Integer] -> Integer -> Integer
sieveAns []     iter = iter
sieveAns (p:xs) iter | p > 2000000 = iter
                     | otherwise   = sieveAns (filter (\x -> (x `mod` p) > 0) xs) (iter+p)

answer :: Integer
answer = sieveAns [2..] 0