{--
Project Euler Question 4
Find the largest palindromic number which is a product of 2 
3 digit numbers
--}

isPalindrome :: Integer -> Bool
isPalindrome n = digitList n == reverse (digitList n)
  where
    -- This returns the list of digits in reverse order,
    -- so digitList 12345 = [5,4,3,2,1]. In this case
    -- that doesn't really matter..
    digitList :: Integer -> [Integer]
    digitList 0 = []
    digitList n = (n `mod` 10) : digitList (n `div` 10)
    
threeDigitProducts :: [Integer]
threeDigitProducts = [x*y | x <- [999,998 .. 100], y <- [999,998 .. 100], isPalindrome (x*y)];

biggest = maximum threeDigitProducts