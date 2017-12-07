-- License: ISC (see LICENSE)
-- Dino Morelli <dino@ui3.info>

module TCE.Test.Data.Time.Epoch ( test_epochUTCConv ) where

import TCE.Data.Time.Epoch
   ( epochToUTCTime, utcTimeToEpoch )
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

import TCE.Test.BoundedInteger


test_epochUTCConv :: SpecWith ()
test_epochUTCConv = describe "epoch to UTCTime round-trip" $ do
   prop "epoch as Int" $
      \(Large e) -> (utcTimeToEpoch . epochToUTCTime $ e) == (e :: Int)

   prop "epoch as Integer" $
      \(Large (BoundedInteger e)) -> (utcTimeToEpoch . epochToUTCTime $ e) == e
