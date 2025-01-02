#!/bin/bash

if [[ $# != 1 ]]; then
	exit 1
fi

ORIGINAL_STRING=$1
CHAR_REMAINING=$(echo $ORIGINAL_STRING | sed 's/[AB]//g')

if [[ ${CHAR_REMAINING} !=  "" ]]; then
	echo "falso"
	exit 0
fi

NR_B=$(echo $ORIGINAL_STRING | sed 's/[A]//g' | wc -c)
NR_A=$(echo $ORIGINAL_STRING | sed 's/[B]//g' | wc -c)

if [[ $NR_A -eq $NR_B ]]; then
	echo "vero"
else
	echo "falso"
fi 
