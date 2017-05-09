module Chapter_17.BadMonoid where

import Control.Applicative
import Data.Monoid
import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes

data Bull =
    Fools
    | Twoo
    deriving (Eq, Show)

instance Arbitrary Bull where
    arbitrary = frequency [(1, return Fools), (2, return Twoo)]

instance Monoid Bull where
    mempty = Fools
    mappend _ _ = Fools
    
instance EqProp Bull where 
    (=-=) = eq
    
