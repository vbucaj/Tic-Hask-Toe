module EX6 where

import Data.Char 
import Data.List 
import System.Random.Stateful (globalStdGen)

main :: IO()
main = undefined  

-- do Notation

-- greet Triner with lambda functions
greetTrainer :: IO ()
greetTrainer = 
    putStrLn "Enter your name: " >> 
    getLine >>= (\name -> putStrLn $ "ohayou, " ++ name ++ "!")

-- greetTrainer with do notation

greetTrainerDo :: IO ()

greetTrainerDo = do 
    putStrLn "Enter your name: "
    name <- getLine 
    putStrLn $ "O hey you, " ++ name ++ "!"

-- putStrLn: takes as an input a String and outputs it as a IO unit (essentially prints it out)
-- getLine: prompts user to enter an input, and returns the same input as an IO String


-- greet User

greetUser :: IO ()
greetUser = 
    putStrLn "Enter your first name: " >>
    getLine >>= (\fname -> 
        putStrLn "Enter your last name: " >>
        getLine >>= (\lname -> 
            putStrLn $ concat ["O! Hey! You!, ", fname , " ", lname, "!"]))

-- refactor greetUser with do Notation

greetUserDo :: IO ()

greetUserDo = do
    putStrLn "Enter your first name: "
    fname <- getLine 
    putStrLn "Enter your last name: "
    lname <- getLine
    putStrLn $ concat ["O, hey, you! ", fname, " ", lname, "!"]

-- let 

leapChecker :: IO ()

leapChecker = do 
    putStrLn "Enter a year: "
    yrStr <- getLine 
    let yr = read yrStr :: Int 
        isLeap = if yr `mod` 100 == 0 then yr `mod` 400 == 0 else yr `mod` 4 == 0 
        msg = concat [yrStr, " is ", if isLeap then "" else "not ", "a leap year"]
    putStrLn msg


-- Nested do Blocks

nestedDo = do
    putStrLn "Enable debug mode? (y/n)"
    c <- getChar 
    if c == 'y'
        then do 
            putStrLn "Debug mode enabled."
        else do 
            putStrLn "Debug mode disabled"