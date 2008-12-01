{--
Project Euler Question 10
Find the sum of all prime numbers below 2000000
--}


{-- This brute force solution sucks!! --}

isPrime :: Integer -> Bool
isPrime n = isPrimeCore 2
  where isPrimeCore testdiv | testdiv > round (sqrt (fromIntegral n))  = True
                            | (n `mod` testdiv) == 0 = False
                            | otherwise = isPrimeCore (testdiv + 1)
                            
primes :: [Integer]
primes = filter isPrime [2 ..]

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow n = sumCore primes 0
  where sumCore (x:xs) acc | x > n = acc
                           | otherwise = sumCore xs (acc+x)