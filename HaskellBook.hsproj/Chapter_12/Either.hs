module Chapter_12.Either where
    
-- Exercise 1

lefts' :: [Either a b] -> [a]
lefts' = foldr f []
    where 
        f (Left a) xs   = a : xs
        f (Right a) xs  = xs
        
-- Exercise 2

rights' :: [Either a b] -> [b]
rights' = foldr f []
    where
        f (Left a) xs   = xs
        f (Right a) xs  = a : xs
        
-- Exercise 3

partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' xs = (lefts' xs, rights' xs)

--partitionEithers' :: [Either a b] -> ([a], [b])
--partitionEithers' = foldr f ([], [])
--  where f (Left a) (xs, ys) = (a:xs, ys)
--        f (Right b) (xs, ys) = (xs, b:ys)

-- Exercise 4

eitherMaybe' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe' f (Right a) = Just $ f a
eitherMaybe' _ _ = Nothing

-- Exercise 5

either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' f _ (Left a) = f a
either' _ f (Right a) = f a