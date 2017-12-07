-- License: ISC (see LICENSE)
-- Dino Morelli <dino@ui3.info>

import Test.Hspec

import TCE.Test.Data.Time.Epoch ( test_epochUTCConv )
import TCE.Test.Data.Time.Milli ( test_milliUTCConv )


main :: IO ()
main = hspec $ do
   test_epochUTCConv
   test_milliUTCConv
