{--
Project Euler Question 1
Find the sum of all numbers below 1000 which are divisible by 3 or 5
--}

main :: IO ()
main = putStrLn(show (sum [x | x <- [1 .. 999], (x `mod` 3 == 0) || (x `mod` 5 == 0)]))
