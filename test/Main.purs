module Test.Main where

import Prelude
-- import Test.Unit (test)
-- import Test.Unit.Main (runTest)
import Test.QuickCheck (quickCheck, Result(..), (===))
import JSON.Minify (minify)
import Debug.Trace (trace)
import Control.Monad.Eff (Eff)

removesBlockCommentsAndWhitespace :: Result
removesBlockCommentsAndWhitespace = ((minify i) === o)
  where
    i = "/* comment */ { test : \"m\"}"
    o = "{test:\"m\"}"

removesLineCommentsAndWhitespace :: Result
removesLineCommentsAndWhitespace = ((minify i) === o)
  where
    i = "// line comment \n { // line comment \n test : \"m\"}"
    o = "{test:\"m\"}"

test3 :: Result
test3 = ((minify "// comment \n {\"a\":\"a\"}") === "{\"a\":\"a\"}")

-- | let minified = (minify """// comment \n {"a":"a"}""")

main = do
    trace "minify should remove */ block comments */ and whitespace." \_ ->
    quickCheck removesBlockCommentsAndWhitespace

    trace "(1) minify should remove // line comments and whitespace." \_ ->
    quickCheck removesLineCommentsAndWhitespace

    trace "(2) minify should remove // line comments and whitespace." \_ ->
    quickCheck test3
