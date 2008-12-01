{--
Project Euler question 12
Find the first triangular number with over 500 divisors.
--}

numDivisors :: Integer -> Integer
numDivisors n = numCore 1 0 
  where numCore testdiv acc | testdiv > (n `div` 2)  = acc+1
                            | (n `mod` testdiv) == 0 = numCore (testdiv+1) (acc+1)
                            | otherwise              = numCore (testdiv+1) acc
                            
answer :: Integer
answer = core 1 2
  where
    core n increment =
      if (numDivisors n) > 500 then n
      else core (n+increment) (n+1) 