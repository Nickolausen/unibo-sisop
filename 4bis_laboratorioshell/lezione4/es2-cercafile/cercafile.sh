#!/bin/bash

ALL_FILES=$(ls -l /usr/include/?{c..g}*)

for FILE in $ALL_FILES ; do
	if [[ -e $FILE && (${#FILE} -lt 18 || ${#FILE} -gt 23) ]]; then
		echo $FILE
	fi
done
