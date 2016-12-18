module Chapter_6.Typecheck where

-- Exercise 1    
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- Exercise 2
data Mood = Blah | Woot deriving (Show, Eq)

settleDown x =  if x == Woot
                then Blah
                else x
             
-- Exercise 3
-- a) ?
-- b) It's not Num
-- c) It's not Ord, just Eq

-- Exercise 4
-- It does typecheck, but s1 is only a partial function application, so it cannot be presented.
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"