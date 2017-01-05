module Chapter_10.WarmUp where
    
stops  = "pbtdkg"
vowels = "aeiou"

---------------------- Exercise 1
-- a
svs stops vowels = [(s, v, s') | s <- stops, v <- vowels, s' <- stops]

-- b
svs' stops vowels = [(s, v, s') | s <- stops, v <- vowels, s' <- stops, s == 'p']

---------------------- Exercise 2, 3
-- This function caclulates average word length in a string
seekritFunc :: Fractional a => String -> a
seekritFunc x = fromIntegral (sum (map length (words x))) / fromIntegral (length (words x))