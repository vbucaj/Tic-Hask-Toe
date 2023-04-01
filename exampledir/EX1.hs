module EX1 where 

-- test1 :: String -> String
-- test1 country = "yes"

-- add1 :: Integer->Integer->Integer
-- add1 x y = x+y

type Name = String
type Id = Int
type Power = String 
-- type Pokemon = (Name, Id, [Power])

-- type Company = (Name, Year, [Subsidiary])

-- getName :: Pokemon -> Name -- getName :: ([Char], Int, [[Char]])

data Pokemon = MkPokemon Name Id [Power]
    deriving Show

pikachu = MkPokemon "Pikachu" 25 ["Electric"]

fst' :: (a,b,c) -> a
fst' (x, y, z) = x

getName :: Pokemon -> Name
getName (MkPokemon name _ _) = name

bulbasaur = MkPokemon "Bulbasaur" 1 ["Grass", "Poisson"]


fst'' :: ((a,b), (c,d)) -> a
fst'' ((w, _), _) = w


fifth :: [a]->a
fifth (_:_:_:_:x:_) = x 

getPower :: Pokemon -> Power 
getPower (MkPokemon _ _ (x:_)) = x 

getPower' :: Pokemon -> Power 
getPower' (MkPokemon _ _ x) = head x

getSecondPower :: Pokemon -> Power 
getSecondPower (MkPokemon _ _ (_:x:_)) = x

-- type _FIFTH_ = 