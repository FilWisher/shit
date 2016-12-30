#!/bin/sh

if [ -e .shit ]; then
	echo "repository already initialized"
	exit 1
fi

mkdir .shit
touch .shit/index