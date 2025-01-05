#!/bin/bash

if (( $# != 1 )) ; then
	echo "Insuff. nr. of args! (Received: $#)" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1!" 1>&2
	exit 1
fi

LINES=$(wc -l | cut -d " " -f 1)

cat $1 | tail -n $(( $LINES-1 )) > "$1.copy"
cat $1 | head -n 1 >> "$1.copy"
