#!/bin/bash

if (( $# != 1 || $1 < 0 )) ; then
	echo "Inconsistent number of args! (Received: $#)" 1>&2
	exit 1
fi

NUM=$1

if (( $NUM == 0 )) ; then
	echo "Received args: $NUM"
	exit 0
fi

PIDS=""

for ((i=0;i<$NUM;i=i+1)) ; do
	./discendenti.sh $(( $NUM-1 )) &
	PIDS+="$! "
done 

wait $PIDS

echo "END OF SCRIPT; Received $1"
