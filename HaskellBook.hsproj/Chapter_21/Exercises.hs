module Chapter_21.Exercises where

import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes

-- 1
    
newtype Identity a = Identity a
    deriving (Eq, Ord, Show)
    
instance Functor Identity where
    fmap f (Identity a) = Identity $ f a
    
instance Foldable Identity where
    foldMap f (Identity a) = f a

instance Traversable Identity where
    traverse f (Identity a)= Identity <$> f a
    
instance Arbitrary a => Arbitrary (Identity a) where
    arbitrary = do
        a <- arbitrary
        return $ Identity a
        
instance Eq a => EqProp (Identity a) where (=-=) = eq

identityTrigger = undefined :: Identity (Int, Int, [Int])

-- 2

newtype Constant a b = Constant { getConstant :: a }
    deriving (Eq, Ord, Show)
    
instance Functor (Constant a) where
    fmap _ (Constant a) = Constant a
    
instance Foldable (Constant a) where 
    foldMap _ _ = mempty
    
instance Traversable (Constant a) where 
    traverse _ (Constant a) = pure $ Constant a
    
instance (Arbitrary a, Arbitrary b)  => Arbitrary (Constant a b) where
    arbitrary = do
        a <- arbitrary
        return $ Constant a
        
instance (Eq a, Eq b) => EqProp (Constant a b) where
    (=-=) = eq

constantTrigger = undefined :: Constant Int (Int, Int, [Int])