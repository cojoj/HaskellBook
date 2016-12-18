module Chapter_6.Match_the_types where
import Data.List
    
-- 1
i :: Num a => a
i = 1

-- 2
--f :: Float
--f :: Num abs => a
--f = 1.0

-- 3
-- It will work fine
--f :: Fractional a => a
--f = 1.0

-- 4
--f :: RealFrac a => a
--f = 1.0

-- 5
-- It actually doesn't matter as we just return the same value
--freud :: a -> a
freud :: Ord a => a -> a
freud x = x

-- 6
-- Works, but it's a huge limitation to this function
--freud' :: a -> a
freud' :: Int -> Int
freud' x = x

-- 7
-- Too generic...
myX = 1 :: Int

sigmund :: Int -> Int
--sigmund :: a -> a
sigmund x = myX

-- 8
-- Same here, too generic
sigmund' :: Int -> Int
--sigmund' :: Num a => a -> a
sigmund' x = myX

-- 9
--jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)

-- 10
-- Will work fine

-- 11
mySort :: [Char] -> [Char]
mySort = sort

-- Too generic

signifier :: [Char] -> Char
--signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs)