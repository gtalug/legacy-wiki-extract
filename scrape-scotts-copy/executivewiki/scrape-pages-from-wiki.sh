#!/bin/bash

while read line; do
    regex="\/executive\/wiki\/(.*)\""
    if [[ $line =~ $regex ]]; then
	page=${BASH_REMATCH[1]}
	echo $page | cut -d '"' -f 1
    fi
done | sort | uniq
