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

pangram'' txt = ((== 26) . length . nub . map toLower . filter isAlpha ) txt