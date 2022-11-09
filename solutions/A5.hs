module A5 where

import A1
import A2
import A3
import A4

import System.Random.Stateful (globalStdGen, uniformM)
import Control.Monad (when)

-- *** Assignment 5-1 *** --

-- Q#01

printBoard b = putStrLn (formatBoard b)

-- Q#02
_LOGO_PATH_ :: FilePath
_LOGO_PATH_ = "./assets/logo.txt"


printLogo = undefined

-- Q#03
_RANDOM_BOOL_ :: IO Bool
_RANDOM_BOOL_ = uniformM globalStdGen


firstPlayer = undefined

-- Q#04

getMove = undefined

-- Q#05

play = undefined

-- *** Assignment 5-2 *** --

-- Q#06

printLogoDo = undefined

-- Q#07

firstPlayerDo = undefined

-- Q#08

getMoveDo = undefined

-- Q#09

playDo = undefined