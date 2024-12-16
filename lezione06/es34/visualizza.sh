#!/bin/bash

for RES in $(find /usr/include) ; do
	if [[ -f $RES ]] ; then
		head -n 3 $RES
	fi
done 
