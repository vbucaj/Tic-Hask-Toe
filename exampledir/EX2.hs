module EX2 where


-- Type Synonyms

type Id = Int
type Name = String
type Quantity = Int

_PIKACHU_ID_ :: Id
-- GHC will actually see: _PIKACHU_ID_ :: Id
_PIKACHU_ID_ = 33

-- getPokemonName :: Id -> Name 

-- Unit-like Types

-- data () = ()

data Bool = True | False

data PokemonType = Grass | Fire | Water deriving Show 

data StarterPokemon = Bulbasaur | Charmander | Squirtle
    deriving (Show, Read, Eq, Ord, Bounded, Enum)


-- Conditional Logic
-- =====================

-- #1 if-then-else expressions


-- #2 Guards
getStarterPokemon x
    | x=="fire" = "Charmander"
    | x=="grass"="Bulbasaur"
    | x=="water"="Squirtle"
    | otherwise = "Pikachu"

-- #3 case expressions
getStarterPokemon' x = case x of 
    "fire" -> "Charmander"
    "grass" -> "Bulbasaur"
    "water" -> "Squirtle"
    _ -> "Pikachu"

-- #4 Function patterns 
getStarterPokemon'' "fire" = "Charmander"
getStarterPokemon'' "water" = "Squirtle"
getStarterPokemon'' "grass" = "Bulbasaur"
getStarterPokemon'' _       = "Pikachu"