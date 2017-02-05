module Chapter_12.Maybe where
    
-- Exercise 1

isJust :: Maybe a -> Bool
isJust (Just _) = True
isJust _        = False 

isNothing :: Maybe a -> Bool
isNothing = not . isJust

-- Exercise 2

mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee x _ Nothing = x
mayybee _ f (Just y) = f y

-- Exercise 3

fromMaybe :: a -> Maybe a -> a
fromMaybe x m = mayybee x id m

-- Exercise 4

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:_) = Just x

maybeToList :: Maybe a -> [a]
maybeToList (Just x) = x : []
maybeToList _ = []

-- Exercise 5

catMaybes :: Eq a => [Maybe a] -> [a]
catMaybes xs = map (\(Just x) -> x) $ justs xs
    where justs = filter (\x -> x /= Nothing)
    
-- Exercise 6

flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe [] = Just []
flipMaybe xs = foldr f (Just []) xs
    where   
        f _ Nothing = Nothing
        f Nothing _ = Nothing
        f (Just a) (Just b) = Just (a:b)