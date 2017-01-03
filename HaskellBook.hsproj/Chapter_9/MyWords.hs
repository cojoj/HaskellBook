module Chapter_9.MyWords where

-- Exercise 1    
myWords :: String -> [String]
myWords []       = []
myWords (' ':s)  = myWords s
myWords s        = w : myWords t
  where
    w = takeWhile (/= ' ') s
    t = dropWhile (/= ' ') s