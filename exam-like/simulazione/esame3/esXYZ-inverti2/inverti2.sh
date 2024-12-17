#!/bin/bash

if (( $# != 1 )) ; then
	echo "Inconsistent nr. of args! (Received: $#)"
	exit 1
fi 

read ROW < $1
if [[ $? == 0 ]] ; then
	./inverti2.sh $1
	OUT="${ROW}{$OUT}"
else
	echo $OUT
fi
