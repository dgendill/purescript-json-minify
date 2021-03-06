# purescript-json-minify

[![Latest release](https://img.shields.io/bower/v/purescript-json-minify.svg)](https://github.com/dgendill/purescript-json-minify/releases)
[![Build Status](https://travis-ci.org/dgendill/purescript-json-minify.svg?branch=master)](https://travis-ci.org/dgendill/purescript-json-minify)

* [Documentation](#documentation)
* [Example](#example)
* [Tests](#tests)
* [Compatibility](#compatibility)

This module is a foreign interface to the `JSON.minify` function written by [Kyle Simpson](http://getify.me/). It's only purpose is to remove comments and whitespace from JSON data, i.e. from JSON config files.

The original javascript source can be found [here](https://github.com/getify/JSON.minify/tree/javascript).

## Install

```
bower install purescript-json-minify
```

If you need to install a specific version just add #version, e.g. `bower install purescript-json-minify#2.0.0`.  See [Compatibility](#compatibility) for versioning information.

## Documentation

#### minify

``` purescript
minify :: String -> String
```

Accepts a JSON string and returns a new string with comments and whitespace removed.

## Example

```purescript
import JSON.Minify (minify)

-- returns "{\"a\":\"a\"}"
minified = (minify "// comment \n {\"a\":\"a\"}")")
```

## Tests

To run the tests install the package locally.

```
git clone https://github.com/dgendill/purescript-json-minify
bower install
npm run test
```

## Compatibility

| Purescript | purescript-json-minify |
|------------|------------------------|
| v0.11.0 | v3.x.x |
| v0.10.1 - v0.10.7    | v2.x.x |
| v0.9.3     | v1.x.x |
| v0.9.2     | v1.x.x |


You can use [psvm](https://www.npmjs.com/package/psvm) to switch between purescript versions.
