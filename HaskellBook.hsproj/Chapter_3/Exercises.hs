module Chapter_3.Exercises where

-- Exercise 1
-- Helper variable

temp = "Curry is awesome"

-- Exercise 2

addExclamation x = x ++ "!"
takeFourth x = x !! 4
dropNineChars x = drop 9 x 

-- Exercise 3

thirdLetter :: String -> Char
thirdLetter x = x !! 3

-- Exercise 4

letterIndex :: Int -> Char 
letterIndex x = temp !! x

-- Exercise 5

rvrs      = z ++ y ++ x 
  where x = take 5 temp 
        y = take 3 $ drop 6 temp
        z = drop 9 temp ++ " "