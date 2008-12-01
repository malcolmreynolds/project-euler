{--
Project Euler question 9
Find the product of the unique pythagorean triple a,b,c such that
a+b+c = 1000
--}

findOtherTriplet :: Integer -> Integer -> Maybe Integer
findOtherTriplet a b = if (cCand^2) == (a^2 + b^2) then Just cCand
                                                    else Nothing
  where cCand :: Integer
        cCand = round (sqrt (fromIntegral (a^2 + b^2)))
        
triplets :: [[Integer]]
triplets = map unMaybe (filter valid [(a,b,findOtherTriplet a b) | a <- [1 .. 1000], b <- [1 .. 1000]])
  where valid (_,_,Nothing) = False
        valid (_,_,Just _)  = True
        unMaybe (a,b,Just c) = [a,b,c]
        
bestTrip :: [[Integer]]
bestTrip = filter (\xs -> (sum xs) == 1000) triplets

answer = product (head bestTrip)