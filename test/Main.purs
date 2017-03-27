module Test.Main where

import Test.JSON.Minify as T

main :: forall e. Eff ( console :: CONSOLE, random :: RANDOM, exception :: EXCEPTION | e) Unit
main = T.main
