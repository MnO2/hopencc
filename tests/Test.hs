module Main where

import Data.Maybe
import Language.OpenCc
import Test.QuickCheck

main = do
    handle <- loadOpenCcConf "zhtw2zhcn_s.ini"
    simp <- fmap fromJust $ convertFromUTF8 handle "紐約時報"
    putStrLn simp
    freeOpenCcConf handle
