-- License: ISC (see LICENSE)
-- Author: Dino Morelli <dino@ui3.info>

module TCE.Data.Time.Milli
   ( milliToUTCTime
   , utcTimeToMilli
   )
   where

import Data.Time ( UTCTime )
import Data.Time.Clock.POSIX
   ( posixSecondsToUTCTime, utcTimeToPOSIXSeconds )


{- | Parse a number representing the time in milliseconds into a
   Haskell UTCTime data structure
-}
milliToUTCTime :: Integral a => a -> UTCTime
milliToUTCTime = posixSecondsToUTCTime . (/ 1000) . fromIntegral


-- | Convert a UTCTime into milliseconds
utcTimeToMilli :: Integral a => UTCTime -> a
utcTimeToMilli = round . (* (1000)) . utcTimeToPOSIXSeconds
