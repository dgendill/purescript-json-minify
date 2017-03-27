module Test.Main where

import Test.JSON.Minify as T

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Control.Monad.Eff.Random (RANDOM)

main :: forall e. Eff ( console :: CONSOLE, random :: RANDOM, exception :: EXCEPTION | e) Unit
main = T.main
