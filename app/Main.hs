module Main (main) where

import Codec.Compression.Zlib (decompress)
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import System.Environment
import Text.Printf(printf)

bytesToHex :: B.ByteString -> String
bytesToHex = unwords . map (printf "%02X") . B.unpack

main :: IO ()
main = do
  [args] <- getArgs
  file <- BL.readFile args
  let header = BL.take 34 file
  let body = BL.drop 32 file
  print (bytesToHex $ BL.toStrict header)
  print (bytesToHex (BL.toStrict $ BL.take 100 $ decompress body))


