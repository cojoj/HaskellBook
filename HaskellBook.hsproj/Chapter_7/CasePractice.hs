module Chapter_7.CasePractice where
    
-- Exercise 1
functionC x y = case x > y of
                    True -> x
                    False -> y
                    
-- Exercise 2
ifEvenAdd2 n = case even n of
                   True -> n +2
                   False -> n
                   
-- Exercise 3
nums x = 
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0