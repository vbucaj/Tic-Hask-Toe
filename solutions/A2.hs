{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module A2 where

import A1
import Data.List (intercalate)

-- *** Assignment 2-1 *** --

-- Q#01
promptPlayer :: Player -> String 
promptPlayer player = concat [
        "Player ", 
        showSquare player, 
        "'s turn: enter a row and a column position (ex. A1)"]

-- Q#02
_RANGE_ :: [Int]
_RANGE_ = [1 .. _SIZE_-1]

-- Q#03
isDigit :: Char -> Bool
_MY_CHARS_ = ['0' .. '9']
isDigit n
    | n `elem` _MY_CHARS_ = True
    | n `notElem` _MY_CHARS_ = False


readDigit = undefined

-- Q#04

_EMPTY_ROW_ = undefined


_EMPTY_BOARD_ = undefined

-- Q#05

isTied = undefined


_TIED_BOARD_ = undefined

-- Q#06

indexRowStrings = undefined

-- Q#07

formatLine = undefined

-- *** Assignment 2-2 *** --

-- Q#08
isMoveInBounds :: Move -> Bool 
isMoveInBounds (r, c) = and [r >= 0, r<_SIZE_, c >= 0, c < _SIZE_]

-- Q#09
stringToMove :: String -> Move
stringToMove [r , c] = (convertRowIndex r, readDigit c)
stringToMove _ = _INVALID_MOVE_ -- (-1, -1)

-- Q#10
replaceSquareInRow :: Player -> Int -> Row -> Row
replaceSquareInRow p c row = xs ++ ys'
    where
        (xs, ys) = splitAt c row 
        ys'
            | null ys = []
            | c<0     = ys 
            | otherwise = p : tail ys

myComplexConstant :: Integer -> Integer -> Integer
myComplexConstant x y = area
    where area = x'*y
          x'
            | x < 0 =1
            | x < z = 0
            |otherwise = 2
            where z = x*2 - 3




