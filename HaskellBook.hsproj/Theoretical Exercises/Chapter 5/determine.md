# Type variable or specific type constructor

2. `f :: zed -> Zed -> Blah`  
    `----[1]----[2]-----[3]`
    1. Fully polymorphic
    2. Specific
    3. Specific
3. `f :: Enum b => a -> b -> c`  
   `------[1]-----[2]--[3]--[4]`
    1. Constrained polymorphic
    2. Fully
    3. Constrained
    4. Fully
4. `f :: f -> g -> C`  
   `----[1]--[2]--[3]`
    1. Fully
    2. Fully
    3. Specific