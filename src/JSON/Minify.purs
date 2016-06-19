-- | This module is a foreign interface to the JSON.minify function written by Kyle Simpson.
-- | It's only function is to remove comments and whitespace from JSON data.

-- | The original script can be found here: 
-- | https://github.com/getify/JSON.minify/tree/javascript
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
