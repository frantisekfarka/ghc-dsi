
module SuperclassDefaultInstances where


class Functor f => Applicative f where
	pure :: a -> f a
	(<*>) :: f (a -> b) -> f a -> f b

	default instance Functor f where
		--fmap :: (a -> b) -> f a -> f b
		fmap f x = pure f <*> x


data Identity a = Id a 
	
instance Applicative Identity where
	pure a = Id a
	(<*>) (Id f) (Id a) = Id (f a)


