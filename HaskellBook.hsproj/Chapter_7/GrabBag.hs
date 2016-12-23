module Chapter_7.GrabBag where

-- Exercise 1
-- All of them are equal
    
mTh1 x y z = x * y * z
mTh2 x y = \z -> x * y * z
mTh3 x = \y -> \z -> x * y * z
mTh4 = \x -> \y -> \z -> x * y * z

-- Exercise 3
-- A
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1
    
-- B
addFive = \x -> \y -> (if x > y then y else x) + 5

-- C
mflip f x y = f y x