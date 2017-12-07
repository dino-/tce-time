-- License: ISC (see LICENSE)
-- Dino Morelli <dino@ui3.info>

module TCE.Test.Data.Time.Milli ( test_milliUTCConv ) where

import TCE.Data.Time.Milli ( milliToUTCTime, utcTimeToMilli )
import Test.Hspec ( SpecWith, describe )
import Test.Hspec.QuickCheck ( prop )
import Test.QuickCheck ( Large (..) )

import TCE.Test.BoundedInteger ( BoundedInteger (..) )


test_milliUTCConv :: SpecWith ()
test_milliUTCConv = describe "millis to UTCTime round-trip" $ do
   prop "millis as Int" $
      \(Large m) -> (utcTimeToMilli . milliToUTCTime $ m) == (m :: Int)

   prop "millis as Integer" $
      \(Large (BoundedInteger m)) -> (utcTimeToMilli . milliToUTCTime $ m) == m
