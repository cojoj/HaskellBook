module Chapter_2.Exercises where

-- 1
  
z = 7
x = y ^ 2
waxOn = x * 5
y = z + 8

-- 2

triple x = x * 3

-- 4

waxOn2    = x * 5
  where z = 7
        x = y ^ 2
        y = z + 8
        
-- 6

waxOff x = triple x