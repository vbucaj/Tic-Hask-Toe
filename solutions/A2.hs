{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module A2 where

import A1
import Data.List 
-- import Data.Char ($, .)
import GHC.Base (VecElem(Int16ElemRep))

-- *** Assignment 2-1 *** --

-- Q#01
promptPlayer :: Player -> String 
promptPlayer player = concat [
        "Player ", 
        showSquare player, 
        "'s turn: enter a row and a column position (ex. A1)"]

-- Q#02
_RANGE_ :: [Int]
_RANGE_ = [0 .. _SIZE_-1]

-- Q#03
isDigit :: Char -> Bool
_MY_CHARS_ = ['0' .. '9']
isDigit n
    | n `elem` _MY_CHARS_ = True
    | n `notElem` _MY_CHARS_ = False


charToString :: Char -> String
charToString c = [c]

-- readDigit = undefined
readDigit :: Char -> Int
readDigit n 
  | isDigit n == True = read $ charToString n :: Int
  | otherwise = read "-1" :: Int 

-- Q#04

_EMPTY_ROW_ :: [Square]
_EMPTY_ROW_ = replicate _SIZE_ E 

_EMPTY_BOARD_ :: [[Square]]
_EMPTY_BOARD_ = replicate _SIZE_ _EMPTY_ROW_ 

-- -- Q#05

isTied :: Board -> Bool 
isTied [] = True 
isTied (x:xs) = (E `notElem` x) && isTied xs


_TIED_BOARD_ :: Board
_TIED_BOARD_ = [
    [X, O, O]
  , [O, X, X]
  , [O, X, O]
  ]

-- -- Q#06

indexRowStrings :: [String] -> [(Char,String)]
_ALPHABET_CHARS_ = ['A'..'Z']
indexRowStrings my_list = zip _ALPHABET_CHARS_ my_list 

-- Q#07
formatLine :: [String] -> String 
formatLine xs = _SEP_ ++ intercalate _SEP_ xs ++ _SEP_

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




