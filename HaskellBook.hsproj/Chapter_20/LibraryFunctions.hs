module Chapter_20.LibraryFunctions where
    
import Data.Monoid
    
-- 1
sum :: (Foldable t, Num a) => t a -> a
sum = getSum . foldMap Sum

-- 2
product :: (Foldable t, Num a) => t a -> a
product = getProduct . foldMap Product

-- 7 
length :: (Foldable t) => t a -> Int
length = foldr (\_ b -> b + 1) 0

-- 8
toList :: (Foldable t) => t a -> [a]
toList = foldr (:) []