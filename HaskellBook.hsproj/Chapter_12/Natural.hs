module Chapter_12.Natural where
    
data Nat = Zero | Succ Nat
    deriving (Eq, Show)
    
natToInteger :: Nat -> Integer
natToInteger Zero       = 0
natToInteger (Succ x)   = 1 + natToInteger x
    
integerToNat :: Integer -> Maybe Nat
integerToNat i
  | i < 0       = Nothing
  | otherwise   = Just (tn i)
  where tn i
          | i == 0      = Zero
          | otherwise   = Succ (tn (i - 1))