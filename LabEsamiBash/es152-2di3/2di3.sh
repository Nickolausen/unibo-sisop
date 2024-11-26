#!/bin/bash

cat /usr/include/stdio.h | while read P1 P2 P3 ; do
	if [[ "${P3:1:1}" != "" ]] ; then
		echo "${P3:1:1}"
	fi
done
