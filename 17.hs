lettersIn :: Integer -> Integer
lettersIn 1     = 3
lettersIn 2     = 3
lettersIn 3     = 5
lettersIn 4     = 4
lettersIn 5     = 4
lettersIn 6     = 3
lettersIn 7     = 5
lettersIn 8     = 5
lettersIn 9     = 4
lettersIn 10    = 3
lettersIn 11    = 6
lettersIn 12    = 6
lettersIn 13    = 8
lettersIn 14    = 8
lettersIn 15    = 7
lettersIn 16    = 7
lettersIn 17    = 9
lettersIn 18    = 8
lettersIn 20    = 6
lettersIn 30    = 6
lettersIn 40    = 5
lettersIn 50    = 5
lettersIn 60    = 5
lettersIn 70    = 7
lettersIn 80    = 6
lettersIn 90    = 6
lettersIn 1000  = 11
lettersIn n | n <= 100 = lettersIn (n `div` 10) + lettersIn (n `mod` 10)
            | otherwise = {--between 100 and 999 --} 
              10 + lettersIn (n `div` 100) + lettersIn (rest `mod` 10) + lettersIn (rest `div` 10)
                where rest = n `mod` 100
               
answer = sum (map lettersIn [1..1000])
