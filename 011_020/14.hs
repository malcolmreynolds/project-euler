{--
Project Euler Question 14
Find which number under 1 million produces the longest chain
when using the iterative formula:

n -> n/2 (for even n)
n -> 3n + 1 (for odd n)
--}

iterLength :: Integer -> Integer
iterLength n = iterCore n 1
  where iterCore 1 len = len
        iterCore n len | odd n     = iterCore (3*n + 1) (len+1)
                       | otherwise = iterCore (n `div` 2) (len+1)
                       
                       
answer :: Integer
answer = ans' 1 0 0
  where ans' 1000000 maxidx _      = maxidx 
        ans' n       maxidx maxval = 
          if chainLength > maxval then
            ans' (n+1) n chainLength
          else
            ans' (n+1) maxidx maxval
              where chainLength = iterLength n