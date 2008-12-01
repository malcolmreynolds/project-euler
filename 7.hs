{--
Project Euler Question 7
Find the 10001st prime number
--}

isPrime :: Integer -> Bool
isPrime n = isPrimeCore 2
  where isPrimeCore testdiv | testdiv > round (sqrt (fromIntegral n))  = True
                            | (n `mod` testdiv) == 0 = False
                            | otherwise = isPrimeCore (testdiv + 1)
                            
primes :: [Integer]
primes = filter isPrime [2 ..]

answer :: Integer
answer = primes !! 10001