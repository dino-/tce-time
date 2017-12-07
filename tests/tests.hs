import Test.Hspec

import TCE.Test.Data.Time.Epoch ( test_epochUTCConv )


main :: IO ()
main = hspec $ do
   test_epochUTCConv
