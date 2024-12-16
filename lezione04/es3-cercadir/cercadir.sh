#!/bin/bash

for FILE in /usr/include/*; do
	if [ -d ${FILE} -a -r ${FILE} -a ${FILE} -nt /usr/include/stdio.h ]; then
		echo ${FILE}
	fi
done
