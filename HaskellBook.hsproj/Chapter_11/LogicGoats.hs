{-# LANGUAGE FlexibleInstances #-}

module Chapter_11.LogicGoats where
    
class TooMany a where
    tooMany :: a -> Bool
    
instance TooMany (Int, String) where
    tooMany (_, _) = True
    
instance TooMany (Int, Int) where
    tooMany (a, b) = (a + b) > 42
    
instance (Num a, TooMany a) => TooMany (a, a) where
    tooMany (a, b) = tooMany(a + b)