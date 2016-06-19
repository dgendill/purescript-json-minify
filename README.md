# purescript-json-minify

[![Latest release](https://img.shields.io/bower/v/purescript-json-minify.svg)](https://github.com/dgendill/purescript-json-minify/releases)

[![Build Status](https://travis-ci.org/dgendill/purescript-json-minify.svg?branch=master)](https://travis-ci.org/dgendill/purescript-json-minify)

This module is a foreign interface to the JSON.minify function written by [Kyle Simpson](http://getify.me/). It's only purpose is to remove comments and whitespace from JSON data.

The original javascript source can be found [here](https://github.com/getify/JSON.minify/tree/javascript).

## Example

```purescript
import JSON.Minify (minify)

-- returns "{\"a\":\"a\"}"
minified = (minify "// comment \n {\"a\":\"a\"}")")
```

## Module JSON.Minify

#### minify

``` purescript
minify :: String -> String
```

Accepts a JSON string and returns a new string with comments and whitespace removed.