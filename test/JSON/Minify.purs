module Test.JSON.Minify where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Control.Monad.Eff.Random (RANDOM)
import Debug.Trace (trace)
import JSON.Minify (minify)
import Test.QuickCheck (quickCheck, Result, (===))

blockComments1 :: Result
blockComments1 = ((minify i) === o)
  where
    i = "/* comment */ { test : \"m\"}"
    o = "{test:\"m\"}"

lineComments1 :: Result
lineComments1 = ((minify i) === o)
  where
    i = "// line comment \n { // line comment \n test : \"m\"}"
    o = "{test:\"m\"}"

lineComments2 :: Result
lineComments2 = ((minify "// comment \n {\"a\":\"a\"}") === "{\"a\":\"a\"}")

lineComments3 :: Result
lineComments3 = ((minify i) === o)
  where
    i = "// line comment \n { test : \"m\" \n // line comment \n}"
    o = "{test:\"m\"}"


main :: forall e. Eff ( console :: CONSOLE, random :: RANDOM, err :: EXCEPTION | e) Unit
main = do
    trace "minify should remove */ block comments */ and whitespace." \_ ->
    quickCheck blockComments1

    trace "(1) minify should remove // line comments and whitespace." \_ ->
    quickCheck lineComments1

    trace "(2) minify should remove // line comments and whitespace." \_ ->
    quickCheck lineComments2

    trace "(3) minify should remove // line comments and whitespace." \_ ->
    quickCheck lineComments3
