# Docker Stylelint

A "mighty, modern linter" allowing you to write better ```css```, ```less``` and ```sass```. Letting you run [Stylelint](https://github.com/stylelint/stylelint) from inside a container. This implements the stylelint-config-standard, however, you could extent to alter that if required.

**This is a Dockerised Solution for running Stylelint**.

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/stylelint.svg)][hub] [![](https://images.microbadger.com/badges/image/willhallonline/stylelint.svg)](https://microbadger.com/images/willhallonline/stylelint "Get your own image badge on microbadger.com") [![Docker Automated build](https://img.shields.io/docker/automated/willhallonline/stylelint.svg)][hub] [![Docker Build Status](https://img.shields.io/docker/build/willhallonline/stylelint.svg)][hub]

## Supported tags and respective ```Dockerfile``` links

The numbering is based upon the [node](https://hub.docker.com/_/node) version.

* ```latest```, ```alpine```, ```10-alpine``` [Dockerfile](https://github.com/willhallonline/docker-stylelint/blob/master/node10/alpine/Dockerfile)
* ```stretch```, ```10-stretch``` [Dockerfile](https://github.com/willhallonline/docker-stylelint/blob/master/node10/stretch/Dockerfile)
* ```8-alpine``` [Dockerfile](https://github.com/willhallonline/docker-stylelint/blob/master/node8/alpine/Dockerfile)
* ```8-stretch``` [Dockerfile](https://github.com/willhallonline/docker-stylelint/blob/master/node8/stretch/Dockerfile)
* ```6-alpine``` [Dockerfile](https://github.com/willhallonline/docker-stylelint/blob/master/node6/alpine/Dockerfile)
* ```6-stretch``` [Dockerfile](https://github.com/willhallonline/docker-stylelint/blob/master/node6/stretch/Dockerfile)

## Docker Commands

### Pull

```
$  docker pull willhallonline/stylelint
$  docker pull willhallonline/stylelint:alpine
$  docker pull willhallonline/styeling:8-alpine
```

### Run

#### Stylelint Running

```
$  docker run -it --rm -v $(pwd):/app willhallonline/stylelint [your css file]
```

#### Stylelint Running against ```bad.css```

```
$  docker run --rm -it -v $(pwd):/app willhallonline/stylelint:10-alpine bad.css

bad.css
 1:16  ✖  Expected single space before "}" of a single-line block          block-closing-brace-space-before    
 1:16  ✖  Expected a trailing semicolon                                    declaration-block-trailing-semicolon
 2:1   ✖  Expected empty line before rule                                  rule-empty-line-before              
 3:1   ✖  Expected indentation of 2 spaces                                 indentation                         
 3:17  ✖  Expected single space after ":" with a single-line declaration   declaration-colon-space-after       
 3:20  ✖  Expected newline before "}" of a multi-line block                block-closing-brace-newline-before  
 3:20  ✖  Expected a trailing semicolon                                    declaration-block-trailing-semicolon
 3:21  ✖  Unexpected missing end-of-source newline                         no-missing-end-of-source-newline

--- Stylelint Complete ---
```

## Stylelint ```--fix```

* Coming soon (I hope).

## Maintainer

* Will Hall, contact me on [https://www.willhallonline.co.uk](https://www.willhallonline.co.uk).

[hub]: https://hub.docker.com/r/willhallonline/stylelint
[microbadger]: https://microbadger.com/images/willhallonline/stylelint
