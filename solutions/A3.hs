module A3 where

import A1
import A2

import Data.List (transpose, intercalate)

-- *** Assignment 3-1 ***

-- Q#01
showInts :: [Int] -> [String]
showInts xs  = reverse (go [] xs) where
    -- go :: [String] -> [String] -> [String]
    go acc []    = acc 
    go acc (y:ys) = go (z:acc) ys
        where z = show y


_HEADER_ :: String
_HEADER_ = " " ++ formatLine (showInts _RANGE_)

-- Q#02

showSquares = undefined


-- Q#03

formatRows = undefined

-- Q#04

isColEmpty = undefined

-- Q#05

dropFirstCol = undefined


dropLastCol = undefined

-- Q#06

getDiag1 = undefined


getDiag2 = undefined


getAllLines = undefined

-- *** Assignment 3-2 ***

-- Q#07

putSquare = undefined

-- Q#08

prependRowIndices = undefined

-- Q#09

isWinningLine = undefined

-- Q#10

isValidMove = undefined