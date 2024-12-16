#!/bin/bash

if (( $# != 1 )) ; then
	echo "Inconsistent # of args! (Received: $#)"
	exit 1
fi

if (( $1 < 0 )) ; then
	echo "Negative value received! (Received: $1)"
	exit 1
fi

NUM_PROC=$1
if (( $NUM_PROC > 0 )) ; then
	./lanciaricorsivo.sh $(( $NUM_PROC - 1 )) &
	echo $!
	wait $!
fi
