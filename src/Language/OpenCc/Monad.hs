{-# LANGUAGE CPP #-}
#if __GLASGOW_HASKELL__ >= 702
{-# LANGUAGE Safe #-}
#endif

module Language.OpenCc.Monad
(
    loadOpenCcConf,
    freeOpenCcConf,
    convertFromUTF8
) where

import Language.OpenCc.Internal.OpenCc

withOpenCcConf = undefined

loadOpenCcConf :: String -> IO RawOpenCc
loadOpenCcConf = open

freeOpenCcConf :: RawOpenCc -> IO Int
freeOpenCcConf = close

convertFromUTF8 :: RawOpenCc -> String -> IO (Maybe String)
convertFromUTF8 = convertUtf8
