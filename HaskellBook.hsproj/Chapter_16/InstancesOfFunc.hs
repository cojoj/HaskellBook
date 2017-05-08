{-# LANGUAGE ViewPatterns #-}

module Chapter_16.InstancesOfFunc where
   
import Test.QuickCheck
import Test.QuickCheck.Function

functorCompose :: (Eq (f c), Functor f) => f a -> Fun a b -> Fun b c -> Bool
functorCompose x (Fun _ f) (Fun _ g) = (fmap (g . f) x) == (fmap g . fmap f $ x)

functorIdentity :: (Functor f, Eq (f a)) => f a -> Bool
functorIdentity f = fmap id f == f

type IntToInt = Fun Int Int
type IntFC = [Int] -> IntToInt -> IntToInt -> Bool

-- Exercises
-- 1
newtype Identity a = Identity a

instance Functor Identity where
    fmap f (Identity a) = Identity (f a)

-- 2
data Pair a = Pair a a

instance Functor Pair where
    fmap f (Pair a b) = Pair (f a) (f b)
    
-- 3
data Two a b = Two a b

instance Functor (Two a) where
    fmap f (Two a b) = Two a (f b)
    
-- 4
data Three a b c = Three a b c

instance Functor (Three a b) where 
    fmap f (Three a b c) = Three a b (f c)
    
-- 5
data Three' a b = Three' a b b

instance Functor (Three' a) where
    fmap f (Three' a b c) = Three' a (f b) (f c)
    
-- 6
data Four a b c d = Four a b c d

instance Functor (Four a b c) where
    fmap f (Four a b c d) = Four a b c (f d)
    
-- 7
data Four' a b = Four' a a a b

instance Functor (Four' a) where
    fmap f (Four' a b c d) = Four' a b c (f d)