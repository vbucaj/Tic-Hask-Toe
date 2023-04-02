module EX3 where

main :: IO()
main = undefined 
-- List Anatomy & Construction

-- data [] a = [] | a:[] a 

_MY_PARTY_ :: [String]
_MY_PARTY_ = "Bulbasaur":("Caterpie":("Pidgey":("Rattata":[])))

-- Ranges 

_ONE_TO_TEN_ :: [Int]
_ONE_TO_TEN_ = [1 .. 10]

_A_TO_Z_ :: [Char]
_A_TO_Z_ = ['A' .. 'Z']

_DESC_ :: [Char]
_DESC_ = ['Z','Y' .. 'A']

-- Indeterminate Ranges

_INFINITE_ :: [Int]
_INFINITE_ = [0 ..]

-- Compute the primes up to n

-- _PRIMES_ = sieve [2 ..]
-- nPrimes n = take n _PRIMES_
-- primesUpTo limit = takeWhile (<=limit) _PRIMES_

-- Return alternate element of list

alternate :: [a] -> [a]
alternate []       = []
alternate (_:[])   = error "One element list" -- returning a runtime custom error 
alternate (_:y:zs) = y:(alternate zs)

-- Indeterminate Ranges 

-- zipping lists of different ranges 

_POKEMON_ = [
    "Bulbasaur", "Ivysaur", "Venusaur",
    "Charmander", "Charmeleon", "Charizard",
    "Squirtle", "Wartortle", "Blastoise"]

_POKEDEX_ :: [(Int, String)]
_POKEDEX_ = zip [1 ..] _POKEMON_ 