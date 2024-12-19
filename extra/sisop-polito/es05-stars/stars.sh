#!/bin/bash

if (( $# != 1 )) ; then
	echo "Insuff. nr. of args! Received: $#" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1" 1>&2
	exit 1
fi

while read QTY
do
	echo -ne "${QTY}\t"
	for ((i=1;i<=$QTY;i=$i+1))
	do
		echo -n "*"
	done
	echo ""
done < $1
