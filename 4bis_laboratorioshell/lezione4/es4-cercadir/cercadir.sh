#!/bin/bash

for FILE in /usr/include/*; do
	test -d $FILE && test -r $FILE && test $FILE -nt /usr/include/stdio.h
	# test -d $FILE -a -r $FILE -a $FILE -nt /usr/include/stdio.h
	echo $?
	if [ $? -eq 0 ]; then
		echo $FILE
	fi
done
