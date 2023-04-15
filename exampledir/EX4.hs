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

countDown' :: Int -> String
countDown' 0 = "Liftoff"
countDown' n = if n >0 then countDown' (n-1) else "failed to launch"
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
