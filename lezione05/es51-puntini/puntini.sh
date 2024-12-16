#!/bin/bash

if [[ $# != 1 ]] ; then
	echo "Inconsistent nr of args! (Received $#)"
	exit 1
fi

for ((SEC=1;SEC<=$1;SEC=SEC+1))
do
	sleep 1
	echo -n ".$$"
done
