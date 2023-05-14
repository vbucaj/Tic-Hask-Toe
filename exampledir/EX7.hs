module EX7 where

import Data.Char 
import Data.List 
import System.Random.Stateful (globalStdGen)

main :: IO()
main = undefined  

-- Records

-- data Type = Constructor Field Field

-- defining records
-- data FullName = FullName String String

-- Example: 
-- data Name = Name String String

-- trainer :: Name 
-- trainer = Name "Ash" "Ketchum"

-- you can think of Name as a function with two variables. It is possible to partially apply it, fix one variable.  

-- Constructing Large Records

-- data PokedexEntry = PokedexEntry Int String String Float Float String
-- may be desirable to define synonims


-- replacing record values

-- replaceDescription :: PokedexEntry -> Description -> PokedexEntry

-- replaceDescription (PokedexEntry i n s h w _ ) newDescription = PokedexEntry i n s h w newDescription 

-- Selector/Record Syntax 

-- data Type = Constructor {
--     selector1 :: Type,
--     selector2 :: Type
--         }

-- Naming Selectors

data PokedexEntry = PokedexEntry {getId :: Int, getName :: String
    , getSpecies :: String, getHeight :: Float
    , getWeight :: Float
    , getDescription :: String}

data Name = FirstLast {getFirst :: String, getLast :: String}
        | FirstMiddleLast {getFirst :: String, getMiddle :: String, getLast :: String}

-- Constructing with Selectors 

alakazam = PokedexEntry { getId = 65, getName = "Alakazam", getSpecies = "Psi",
        getWeight = 48.0, getHeight = 1.5, getDescription = "Its brain can outperform supercomputers"}

-- Field Replacement

alakazamSilver = alakazam { getDescription = "This is a replacement for the original description"}

-- Polymorphic Containers 

data Box a = Box { unbbox :: a }

-- Typeclasses Redux 

-- Classes as Constraints 
-- Typeclasses provide a means of constraining polymorphic functions (i.e., limit the types of data a function can operate on)

-- the most polymorphic function is the identity

-- identity :: a -> a

--we can add a constrain to the signature
-- identity Num a => a -> a  So this now constraints the type data of a to Num

-- Manual Instances 

--  instance << CLASS >> << TYPE >> where

-- instance Show PokedexEntry where
--     -- show :: PokedexEntry -> String 
--     show p = unwords [ "NO ." ++ show (getId p)
--             , getName p 
--             , getSpecies p 
--             , "HT. " ++ show (getHeight p) ++ "m"
--             , "WT. " ++ show (getWeight p ) ++ "kg"
--             , getDescription p
--             ]