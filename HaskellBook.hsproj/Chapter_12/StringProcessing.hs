module Chapter_12.StringProcessing where
    
import Data.List (intercalate)

-- Exercise 1
notThe :: String -> Maybe String
notThe "the" = Nothing
notThe a = Just a

replaceThe :: String -> String
replaceThe str = intercalate " " $ map athe $ fmap notThe $ words str
  where athe Nothing = "a"
        athe (Just x) = x