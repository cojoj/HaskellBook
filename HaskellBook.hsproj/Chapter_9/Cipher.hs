module Chapter_9.Cipher where
    
import Data.Char

--caesar :: Int -> String -> String
--caesar s x = map (\x -> chr $ shift $ unshifted x) x
--    where 
--        unshifted x = s + ord x
--        shift x
--            | x > 122   = (x - 122) + 96
--            | otherwise = x

let2int :: Char -> Int
let2int c = ord c - ord 'a'
 
int2let :: Int -> Char
int2let n = chr (ord 'a' + n)
 
shift :: Int -> Char -> Char
shift n c
    | isLower c = int2let((let2int c + n) `mod` 26)
    | otherwise = c
 
encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
 
caesar :: Int -> String -> String
caesar x = encode x 
 
unCaesar :: Int -> String -> String
unCaesar x = encode (-x)