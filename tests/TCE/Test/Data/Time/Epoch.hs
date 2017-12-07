-- License: ISC (see LICENSE)
-- Dino Morelli <dino@ui3.info>

module TCE.Test.Data.Time.Epoch ( test_epochUTCConv ) where

import TCE.Data.Time.Epoch ( epochToUTCTime, utcTimeToEpoch )
import Test.Hspec ( SpecWith, describe )
import Test.Hspec.QuickCheck ( prop )
import Test.QuickCheck ( Large (..) )

import TCE.Test.BoundedInteger ( BoundedInteger (..) )


test_epochUTCConv :: SpecWith ()
test_epochUTCConv = describe "epoch to UTCTime round-trip" $ do
   prop "epoch as Int" $
      \(Large e) -> (utcTimeToEpoch . epochToUTCTime $ e) == (e :: Int)

   prop "epoch as Integer" $
      \(Large (BoundedInteger e)) -> (utcTimeToEpoch . epochToUTCTime $ e) == e
