#!/bin/sh

. ./utils.sh

stringexists $1
fileexists $1

hashfile=`./hash.sh $1`
hash=`echo $hashfile | awk '{print $1}'`
file=`echo $hashfile | awk '{print $2}'`

grep -q $file .shit/index

if [ $? -eq 0 ]; then
	sed -i "s/^.*$file.*$/$hashfile/" .shit/index
else
	echo $hashfile >> .shit/index
fi