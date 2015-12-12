#!/bin/sh

make clean

path="$1"
shift

cmd="\"$path\", \"$path\""

while [ "$1" ]
do
	cmd="$cmd, \"$1\""
	shift
done

make COMMAND="$cmd"
