module Test.JSON.Minify where

import Prelude
import Test.QuickCheck (quickCheck, Result(..), (===))
import JSON.Minify (minify)
import Debug.Trace (trace)
import Control.Monad.Eff (Eff)

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

main = do
    trace "minify should remove */ block comments */ and whitespace." \_ ->
    quickCheck blockComments1

    trace "(1) minify should remove // line comments and whitespace." \_ ->
    quickCheck lineComments1

    trace "(2) minify should remove // line comments and whitespace." \_ ->
    quickCheck lineComments2
