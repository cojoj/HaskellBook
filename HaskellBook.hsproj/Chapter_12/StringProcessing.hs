module Chapter_12.StringProcessing where
    
import Data.List (intercalate)

-- Exercise 1
notThe :: String -> Maybe String
notThe "the" = Nothing
notThe a = Just a

replaceThe :: String -> String
replaceThe str = intercalate " " $ map athe $ fmap notThe $ words str
  where athe Nothing = "a"
        athe (Just x) = x
        
-- Exercise 2

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel xs = matcher 0 $ words xs
    where
        isVowel x = x `elem` "aeiou"
        matcher n (x:y:ys)
            | x == "the" && isVowel (head y) = matcher (n + 1) (y:ys)
            | otherwise = matcher n ys
        matcher n _ = n
        
-- Exercise 3

countVowels :: String -> Integer
countVowels xs = foldl isVowel 0 xs
    where 
        isVowel n x
            | x `elem` "aeiou"  = n + 1
            | otherwise         = n