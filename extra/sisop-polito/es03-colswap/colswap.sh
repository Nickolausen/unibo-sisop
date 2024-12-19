#!/bin/bash

if (( $# != 1 )) ; then
	echo "Insuff. nr. of args! Received: $#" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1" 1>&2
	exit 1
fi

TEMP_FILE="temp.txt"

while read C1 C2 ; do
	echo "$C2 $C1"
done < $1 > $TEMP_FILE

mv $TEMP_FILE $1
