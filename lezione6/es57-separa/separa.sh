#!/bin/bash

PATHS=$PATH+":"

while [[ $PATHS != "" ]] ; do
	CUR_PATH=${PATHS%%:*}
	echo "${CUR_PATH} ${#CUR_PATH}"
	CUR_PATH+=":"
	PATHS=${PATHS##$CUR_PATH}
done
