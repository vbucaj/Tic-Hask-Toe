module EX5 where

import Data.Char 
import Data.List 
import System.Random.Stateful (globalStdGen)

main :: IO()
main = undefined  


-- maximum function w/ foldr

maximum_ :: Ord a => [a] -> a
maximum_ [] = error "empty list"
maximum_ (x:ys) = foldr max x ys


--minumum function w/ foldr

minimum_ :: Ord a => [a] -> a
minimum_ [] = error "empty list"
minimum_ (x:ys) = foldr min x ys

-- reverse function w/ foldl
-- flip :: (a->b->c) -> (b->a->c)
reverse_ :: [a] -> [a]
reverse_ xs = foldl (flip (:)) [] xs

--reverse_ xs = foldl (\acc x -> x:acc) [] xs 
-- reverse_ xs = foldr (\x acc -> acc ++ [x]) [] xs

zipWith_ :: (a->b->c) ->[a]->[b]->[c]
zipWith_ f = go 
    where 
        go [] _ = []
        go _ [] = []
        go (x:xs) (y:ys) = f x y : go xs ys


-- Apply ($) & Compose (.)

-- ($) :: (a -> b)-> a ->b 
-- the use of the Apply ($) operator is to remove the need from having parenthesis everywhere 
-- for example: f $ g $ h x = f( g( h x))

-- (.) :: (b->c)->(a->b) -> (a->c) 

sumSquares xs = sum (map (^2) xs)
sumSquares' xs = sum $ map (^2) xs 

-- criteria = [knowsLangs [Haskell, TypeScript], hasYrsExp 2, inCountry USA]
-- screenCandidate c = and (map ($ c) criteria)

sumSquares_ = sum . map (^2)

-- implementation of Caesar Cipher using function composition (.) 
caesar n msg = 
    map (chr . (+ 65) . (`mod` 26) . (+ n) . subtract 65 . ord . toUpper) msg

pangram txt = (== 26) . length . nub . map toLower $ filter isAlpha txt

pangram' txt = (== 26) . length . nub . map toLower . filter isAlpha $ txt

-- the following will not work

-- pangram' txt = (== 26) . length . nub . map toLower . filter isAlpha txt

-- pangram'' txt = (== 26) . length . nub . map toLower . (filter isAlpha) txt

-- Composotion of fucntions works exactly like in math (F o G o H) x , you need to put parenthesis around the functions
pangram'' txt = ((== 26) . length . nub . map toLower . filter isAlpha ) txt


-- IO Context 

-- Bind (>>=)

-- (>>=) :: IO a -> (a -> IO b) -> IO b 

-- myAction :: a -> IO b 

-- boundAction :: IO a -> IO b 
-- boundAction = (>>= myAction)

-- return

-- myPureFunc :: a->b 
-- return :: a -> IO a 

-- myAction :: a -> IO b 
-- myAction = return . myPureFunc 


-- Randomness 

-- generate a random integer

-- uniformM globalStdGen :: IO Int 

-- (uniformM globalStdGen :: IO Int) >>= (\i -> if even i return "heads" else return "tails")

