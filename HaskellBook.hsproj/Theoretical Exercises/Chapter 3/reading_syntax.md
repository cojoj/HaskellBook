# Reading syntax exercises

1. 
  + Correct  
  + Not correct, cause `++` is an infix **operator**
  + Correct
  + Correct - will produce array of Strings
  + Not correct - parameters are given in the wrong order
  + Correct
  + Not correct - parameters are captured in `String`
  + Correct

2. 

```haskell
concat [[1 * 6], [2 * 6], [3 * 6]]
[6, 12, 18]
```

```haskell
"rain" ++ drop 2 "elbow"
"rainbow"
```

```haskell
10 * head [1, 2, 3]
10
```

```haskell
(take 3 "Julie") ++ (tail "yes")
"Jules"
```

```haskell
concat [tail [1, 2, 3],
        tail [4, 5, 6],
        tail [7, 8, 9]]

[2, 3, 5, 6, 8, 9]
```
  