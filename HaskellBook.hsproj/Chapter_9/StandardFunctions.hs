module Chapter_9.StandardFunctions where
    
myOr :: [Bool] -> Bool 
myOr []     = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ []      = False
myAny f (x:xs)  = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs)
    | e == x    = True
    | otherwise = myElem e xs
    
myElemAny :: Eq a => a -> [a] -> Bool
myElemAny _ [] = False
myElemAny v xs = any (== v) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [[]]     = []
squish []       = []
squish (x:xs)   = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ []      = []
squishMap f (x:xs)  = f x ++ squishMap f xs

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ (x:[]) = x
myMaximumBy comp (x:xs) =
  let
    y = myMaximumBy comp xs
  in
    case comp x y of
      LT -> y
      EQ -> x
      GT -> x

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ (x:[]) = x
myMinimumBy comp (x:xs) =
  let
    y = myMinimumBy comp xs
  in
    case comp x y of
      LT -> x
      EQ -> x
      GT -> y

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare