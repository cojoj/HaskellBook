module Chapter_6.Datatype where
    
data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- 1
-- Wron types, cause Papu expects Rocks and Yeah
-- phew = Papu "chases" True

-- 2
truth = Papu (Rocks "chomskydoz") (Yeah True)

-- 3
equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

-- 4
-- It doesn't derieve Ord, just Eq
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'