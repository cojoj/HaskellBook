module Chapter_8.Recursion where
    
-- Exercise 2
sumAll :: (Eq a, Num a) => a -> a
sumAll 0 = 0
sumAll x = x + sumAll (x - 1)

-- Exercise 3
multiply :: (Integral a) => a -> a -> a
multiply 0 _ = 0
multiply _ 0 = 0
multiply x 1 = x
multiply x y 
    | y < 0     = multiply (-x) (-y)
    | otherwise = x + multiply x (y - 1)