#!/bin/bash

for FILE in $(ls "*.c")
do
	grep -q "POSIX" $FILE
	if (( $? == 0 )) ; then
		cat $FILE
	fi
done 
