module Chapter_12.ValidateTheWord where
    
newtype Word' = 
    Word' String 
    deriving (Eq, Show)
    
vowels = "aeiou"

data Letter = Vowel | Consonant
    deriving (Ord, Eq, Show)

mkWord :: String -> Maybe Word'
mkWord x
    | isWord x = Just $ Word' x
    | otherwise = Nothing
    where
        isWord x
            | numberOfVowels <= length x    = True
            | otherwise                     = False
            where 
                numberOfVowels = length $ filter (\x -> x == Vowel) $ map letter x        
        letter x
            | elem x vowels = Vowel
            | otherwise     = Consonant