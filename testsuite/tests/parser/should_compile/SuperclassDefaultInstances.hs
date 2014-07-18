
{-# LANGUAGE SuperclassDefaultInstances #-}

module SuperclassDefaultInstances where

import Prelude ()

class Functor' f where
	fmap' :: (a -> b) -> f a -> f b

class Functor' f => Applicative f where
	pure :: a -> f a
	(<*>) :: f (a -> b) -> f a -> f b

	default instance Functor' f where
		--fmap :: (a -> b) -> f a -> f b
		fmap' g x = pure g <*> x


data Unit a = Unit
--	deriving (Show)
	
instance Applicative Unit where
	pure a = Unit
	(<*>) _ _ = Unit


-- main = print $ fmap' id Unit

