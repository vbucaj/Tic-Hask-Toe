module Main where

import A1
import A2
import A3
import A4
import A5

main :: IO ()
main = putStrLn "Welcome to Part I of EMURGO Academy's Haskell course!"

_LOGO_PATH_ :: FilePath
_LOGO_PATH_ = "./assets/logo.txt"

printLogo :: IO ()
printLogo = do
  logo <- readFile _LOGO_PATH_
  putStrLn logo