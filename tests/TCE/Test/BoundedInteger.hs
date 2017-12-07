{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- License: ISC (see LICENSE)
-- Dino Morelli <dino@ui3.info>

module TCE.Test.BoundedInteger ( BoundedInteger (..) ) where


{- | Types to be used with Arbitrary and Large must be Bounded so
   QuickCheck can figure out "large" values means in this context.
-}
newtype BoundedInteger = BoundedInteger Integer
   deriving (Integral, Enum, Eq, Num, Ord, Real, Show)

-- | Int's bounds are plenty enormous to use for this test (+/- 2^63)
instance Bounded BoundedInteger where
   maxBound = fromIntegral (maxBound :: Int)
   minBound = fromIntegral (minBound :: Int)
