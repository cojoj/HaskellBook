module Chapter_18.Monad where
    
import Control.Monad (join)

bind :: Monad m => (a -> m b) -> m a -> m b
bind f a = join $ f <$> a