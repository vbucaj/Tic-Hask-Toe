module EX4 where

main :: IO()
main = undefined  


-- Pitfalls

countDown :: Int -> String
countDown n = if n >0
                then countDown (n-1)
                else "Failure to launch"
countDown 0 = "Liftoff"


-- Correct implementation of countDown function 

-- countDown' :: Int -> String
-- countDown' 0 = "Liftoff"
-- countDown' n = if n >0 then countDown' (n-1) else "failed to launch"
                -- else "Failure to launch"


-- Inductive Recursion 


-- implementing the reverse function 
reverse' :: [a]->[a]
reverse' [] = []
reverse' (x:xs) =  reverse' xs ++ [x] 

-- implementing the sum function
sum' :: Num a => [a] -> a 
sum' [] = 0 
sum' (x:xs) = x + sum' xs


--implementation of concat

concat' :: [[a]] -> [a]
concat' [] = []
concat' (xs:xss) = xs ++ concat' xss




-- implementation of the length function 
length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

-- implementation of elem

elem' :: Eq a => a -> [a] -> Bool 
elem' q (x:xs) = q==x || elem' q xs
elem' _ [] = False 


-- elem'' :: Eq a => a->[a]->Bool
-- elem'' q (x:xs)
--     | q==x = True
--     | elem'' q xs 


-- implementation of zip

zip' :: [a]->[b]->[(a,b)]
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys
zip' [] _ = []
zip' _ [] = []

-- implementation of last
last' :: [a]->a 
last' [] = error "empty list"
last' [x] = x
last' (_:xs) = last' xs

-- implementation of init 

init' :: [a] -> [a] 
init' [x] = []
init' (x:xs) = x : init' xs
init' [] = error "empty list"


-----------------------------------------------

-- COMPLEX RECURSION (recursive-go)
-- iterative recursion strategy -- 

-- implementation of reverse function via iterative recursion 
reverse'' :: [a] -> [a]
reverse'' xs = go [] xs where
    go :: [a] -> [a] -> [a] -- go function has an accumulator where it builds up the reverse list
    go acc []      = acc -- this is the base case, when the list becomes empty, it simply returns the accumulator
    go acc (y:ys) = go (y:acc) ys -- go simply pre-pends the first element of the provided list xs into the accumulator x:acc

-- always blue

-- alwaysBlue :: [Color]->Bool
-- alwaysBlue [] = True
-- alwaysBlue (c:cs) = c == Blue && alwaysBlue cs 

-- alwaysBlue' :: Bool -> [Color] -> Bool -- will return False if we start with an empty list
-- alwaysBlue bool []   = bool 
-- alwaysBlue _  (c:cs) = c == Blue && alwaysBlue True cs 
-- the Bool acts like a swtich that flips on when the first element is Blue 
-- because of the 'lazy' evaluation of && the recursion will STOP as soon as a False value is reached 

-- check for primality of a number

isPrime :: Int -> Bool
isPrime n 
  | n <= 1    = False
  | n <= 3    = True
  | otherwise = go 2
  where 
    go i 
      | i >=n    = True -- if acc. reaches n, n is prime
      | mod n i == 0 = False -- not prime if divisible by the acc
      | otherwise = go (i+1) -- increment the acc and continue 
