module Chapter_6.Type_kwon_do where
    
-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk x y z = x y == z

-- 2
arith :: Num b => (a -> b) -> Integer -> a -> b
arith = undefined