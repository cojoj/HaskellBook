module Chapter_10.StandardFunctions where
    
myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\x y -> f x) True

myElem :: Eq a => a -> [a] -> Bool
myElem a = foldr (\ x y -> a == x) False

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f (x:xs) = foldr (\a b -> f a : b) [] xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter pr = foldr f []
  where f a b
          | pr a = a : b
          | otherwise = b
          
squish :: [[a]] -> [a]
squish = foldr (++) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\x y -> f x ++ y) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap (++ [])

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ []     = undefined
myMaximumBy _ [x]    = x
myMaximumBy f (x:xs) = foldl fo x xs
  where fo a b
          | f a b == GT = a
          | otherwise = b
          
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ []     = undefined
myMinimumBy _ [x]    = x
myMinimumBy f (x:xs) = foldl fo x xs
  where fo a b
          | f a b == LT = a
          | otherwise = b