#!/bin/bash

if (( $# != 1 )); then
	echo "Inconsistent nr of args! (Received $#)"
	exit 1
fi 

MYWORD=$1
for ((i=0;i<${#MYWORD};i=i+1)) ; do
	echo ${MYWORD:$i:1}
done | sort | uniq -c | while read OCC CHAR ; do echo "$CHAR $OCC" ; done
