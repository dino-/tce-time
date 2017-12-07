-- License: ISC (see LICENSE)
-- Author: Dino Morelli <dino@ui3.info>

module TCE.Data.Time.Epoch
   ( epochToUTCTime
   , utcTimeToEpoch
   )
   where

import Data.Time ( UTCTime )
import Data.Time.Clock.POSIX
   ( posixSecondsToUTCTime, utcTimeToPOSIXSeconds )


{- | Parse a number representing the time in epoch seconds into a
   Haskell UTCTime data structure
-}
epochToUTCTime :: Integral a => a -> UTCTime
epochToUTCTime = posixSecondsToUTCTime . realToFrac


-- | Convert a UTCTime into seconds since epoch
utcTimeToEpoch :: Integral a => UTCTime -> a
utcTimeToEpoch = round . utcTimeToPOSIXSeconds
