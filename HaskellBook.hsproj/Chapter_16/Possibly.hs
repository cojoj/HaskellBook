module Chapter_16.Possibly where
    
data Possibly a =
    LolNope
  | Yeppers a
  deriving (Eq, Show)
    fmap _ LolNope = LolNope
    fmap f (Yeppers a) = Yeppers (f a)