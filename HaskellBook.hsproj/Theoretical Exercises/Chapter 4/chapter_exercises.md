# Chapter exercises

1. `length :: [a] -> Integer` was my guess, but in reality it's `length :: Foldable t => t a -> Int`  
2. 
    + `length [1 ,2 ,3, 4, 5] == 5`
    + `length [(1, 2), (2, 3), (3, 4)] == 3`
    + `length allAwesome == 2`
    + `length (concat allAwesome) == 1` 
3. `6 / length [1, 2, 3]` is wrong.
4. We have to put parenthesis or `$` and switching from `/` to `div`. For example: `div 6 $ length [1, 2, 3]`
5. It'll produce `Bool` and it'll be `True`
6. Result is `False` and type is `Bool`
7. 
    + `True`
    + This will produce error as types in array aren't the same
    + `4`
    + `False`
    + `True`
8. 
    ```haskell
    isPalindrome :: (Eq a) => [a] -> Bool
    isPalindrome x = x == (reverse x)
    ```
9. 
    ```haskell
    myAbs :: Integer -> Integer
    myAbs x =   if x >= 0
                then x
                else x * (-1)
    ```
10. 
    ```haskell
    f :: (a, b) -> (c, d) -> ((b, d), (a, c))
    f x y = ((snd x, snd y), (fst x, fst y))
    ```
