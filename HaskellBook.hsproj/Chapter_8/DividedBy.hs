module Chapter_8.DividedBy where
    
data DividedResult = Result Integer | DividedByZero deriving Show

dividedBy :: Integral a => a -> a -> (DividedResult, a)
dividedBy _ 0       = (DividedByZero, 0)
dividedBy num denom 
    | num < 0 && denom < 0  = go (abs num) (abs denom) 0
    | otherwise             = go num denom 0    where go n d count        | n < d     = (Result count, n)        | otherwise = go (n - d) d (count + 1)