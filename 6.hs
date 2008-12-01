{--
Project Euler Question 6
Find the difference between the sum of squares
of the integers below 100 and the square of the sum
of the integers below 100.
--}

first100 :: [Integer]
first100 = [1 .. 100]

sumOfSquares :: Integer
sumOfSquares = sum (map (\x -> x*x) first100)

squareOfSums :: Integer
squareOfSums = (\x -> x*x) (sum first100)

answer :: Integer
answer = squareOfSums - sumOfSquares