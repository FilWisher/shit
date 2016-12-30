#!/bin/sh

# check that file exists
function fileexists {
	if [ ! -e "${1}" ]; then
		echo "file does not exist"
		exit 1
	fi
}

function stringexists {
	if [ -z $1 ]; then
		echo $1
		echo "usage: hash <filename>"
		exit 1
	fi
}
