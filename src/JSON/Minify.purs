-- | This module is a foreign interface to the JSON.minify function written by Kyle Simpson.
-- | It's only function is to remove comments and whitespace from JSON data.

-- | The original script can be found here: 
-- | https://github.com/getify/JSON.minify/tree/javascript
-- |
-- | QuickCheck provides a way to write _property-based_ tests.
-- |
-- | The `Arbitrary` and `CoArbitrary` type classes allow us to create
-- | random data with which we can run our tests. This module provides
-- | instances of both classes for PureScript's core data structures,
-- | as well as functions for writing new instances.
-- |
-- | Test suites can use the `quickCheck` and `quickCheckPure` functions
-- | to test properties.
-- |
-- | For example:
-- |
-- | ```purescript
-- | main = quickCheck \n -> n + 1 > n
-- | ```
module JSON.Minify
  (
    minify
  ) where

-- | This function will take a JSON string and remove whitespace and
-- | comments
-- | ```purescript
-- | -- returns "{\"a\":\"a\"}"
-- | let minified = (minify "// comment \n {\"a\":\"a\"}")")
-- | ```
foreign import minify :: String -> String
