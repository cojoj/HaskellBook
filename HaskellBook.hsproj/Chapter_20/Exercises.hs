module Chapter_20.Exercises where
    
import Data.Monoid
import Data.Foldable
    
-- 1
data Constant a b = Constant a

instance Foldable (Constant a) where
    foldMap _ _ = mempty
    
-- 2
data Two a b = Two a b

instance Foldable (Two a) where
    foldMap f (Two a b) = f b
    
-- 3
data Three a b c = Three a b c

instance Foldable (Three a b) where
    foldMap f (Three a b c) = f c
    
-- 4
data Three' a b = Three' a b b

instance Foldable (Three' a) where
    foldMap f (Three' a b c) = f b <> f c
    
-- 5
data Four' a b = Four' a b b b 

instance Foldable (Four' a) where
    foldMap f (Four' a b c d) = f b <> f c <> f d