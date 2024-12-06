#!/bin/bash

if [[ $# != 1 ]]; then
	echo "Insufficient number of args! (received: $#)"
	exit 1
fi

REVERSED=""
ORIGINAL_STRING=$1
for((IDX=${#ORIGINAL_STRING};IDX>=0;IDX=IDX-1))
do
	REVERSED+=${ORIGINAL_STRING:$IDX:1}
done

echo "Original string: $ORIGINAL_STRING"
echo "Reversed one: $REVERSED"
