#!/bin/bash

ALL_FILES=$(ls -la /usr/include)

for FILE in $ALL_FILES; do
	if [[ -d $FILE && $FILE -nt /usr/include/stdio.h && -r $FILE ]]; then
		echo "Found ${FILE}"
	fi
done
