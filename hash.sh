#!/bin/sh

. ./utils.sh

stringexists $1
fileexists $1

sha256sum $1
