module A1 where

import Data.Char (toUpper)

-- *** Assignment 1-1 *** --

-- Q#01

_SIZE_ :: Int
_SIZE_ = 18

-- Q#02

_DISPLAY_LOGO_ :: Bool
_DISPLAY_LOGO_ = True

-- Q#03

convertRowIndex :: Char -> Int
convertRowIndex indexChar = fromEnum (toUpper indexChar) - 65

-- Q#04

_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1,-1)

-- Q#05

_SEP_ :: [Char]

_SEP_ = ['_', '|', '_']

-- *** Assignment 1-2 *** --

-- Q#06
data Square = X | O | E 
    deriving (Show, Eq)


-- Q#07
data GameState = Xwon | Owon | Tie | InProgress 
    deriving (Show, Eq, Ord)


-- Q#08
type Player = Square
type Row  = [Square]
type Line = [Square]
type Board = [Row]
type Move = (Int, Int)





-- Q#09

getFirstPlayer :: Bool -> Player
getFirstPlayer t = 
    if t== True 
        then X 
        else if t == False
            then O
            else E

getFirstPlayer_ :: Bool -> Player
getFirstPlayer_ t
    | t == True = X 
    | t == False = O 
    | otherwise = E 

-- Q#10

showGameState :: GameState -> String
showGameState gs = case gs of 
    Xwon -> "You Won and get an X medal!"
    Owon -> "You Won and get an O medal"
    Tie -> "Game is Tied"
    _ -> "Game is in progress"



-- Q#11
switchPlayer :: Player -> Player 
switchPlayer player 
    | player == X = O 
    | player == O = X 
    | otherwise = E 



-- Q#12
showSquare :: Square -> String 
showSquare square = case square of 
    X -> "X"
    O -> "O"
    E -> "_"