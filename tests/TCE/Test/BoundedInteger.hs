{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- License: ISC (see LICENSE)
-- Dino Morelli <dino@ui3.info>

module TCE.Test.BoundedInteger ( BoundedInteger (..) ) where


newtype BoundedInteger = BoundedInteger Integer
   deriving (Integral, Enum, Eq, Num, Ord, Real, Show)

instance Bounded BoundedInteger where
   maxBound = fromIntegral (maxBound :: Int)
   minBound = fromIntegral (minBound :: Int)
