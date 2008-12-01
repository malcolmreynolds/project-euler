routes :: Integer -> Integer -> Integer
routes 0 _ = 1
routes _ 0 = 1
routes m n = routes (m-1) n + routes m (n-1)

answer = routes 20 20 