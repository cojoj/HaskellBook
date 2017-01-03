module Chapter_9.DataChar where
    
import Data.Char

-- 3
capitalize :: String -> String
capitalize (x:xs) = toUpper x : xs 

-- 4
capitalize' :: String -> String
capitalize' [] = []
capitalize' (x:xs) = toUpper x : capitalize' xs

-- 5
capitalizeHead :: String -> Char
capitalizeHead = toUpper . head