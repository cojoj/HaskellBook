module Chapter_7.ChapterExercises where
    
-- Exercise 1
tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10
          
tensDigit' :: Integral a => a -> a -> a
tensDigit' x = snd . divMod x

hunsD x = d2
    where d  = snd
          d2 = d . divMod x
          
-- Exercise 2
foldBool :: a -> a -> Bool -> a
foldBool a b c = case c of
    True    -> a
    False   -> b
    
foldBool' :: a -> a -> Bool -> a
foldBool' a b c
    | c == True = a
    | otherwise = b
    
-- Exercise 3
g :: (a -> b) -> (a, c) -> (b, c)
g a b = ((a $ fst b), snd b)

-- Exercise 4
roundTrip :: (Show a, Read a) => a -> a 
roundTrip a = read (show a)

-- Exercise 5
roundTripPF :: (Show a, Read a) => a -> a 
roundTripPF = read . show