{--
Project Euler question 3
Find the largest prime factor of a large composite number
--}

testnum = 13195
actualnum = 600851475143

findPrimeFactors :: (Integral a) => a -> [a]
findPrimeFactors n = findCore n 2
  where
    findCore n testdiv  = 
      if (n `mod` testdiv) == 0 then
        testdiv : findCore (n `div` testdiv) testdiv
      else if testdiv > n then
        []
      else
        findCore n (testdiv+1)
      
    