# purescript-json-minify

[![Build Status](https://travis-ci.org/dgendill/purescript-json-minify.svg?branch=master)](https://travis-ci.org/dgendill/purescript-json-minify)

This module is a foreign interface to the JSON.minify function written by Kyle Simpson. It's only function is to remove comments and whitespace from JSON data.

The original script can be found [here](https://github.com/getify/JSON.minify/tree/javascript).

## Usage

```purescript
import JSON.Minify (minify)

-- returns "{\"a\":\"a\"}"
minified = (minify "// comment \n {\"a\":\"a\"}")")
```