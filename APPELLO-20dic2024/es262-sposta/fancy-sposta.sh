#!/bin/bash

# File al di fuori della consegna - aggiunto in data 26 dic 2024
# per completezza

if (( $# != 1 )) ; then
	echo "Insuff. nr. of args! (Received: $#)" 1>&2
	exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE="$1.copy"

if [ ! -f $INPUT_FILE ] ; then
	echo "Cannot open ${INPUT_FILE}!" 1>&2
	exit 1
fi

LINES=$(wc -l < $INPUT_FILE)

tail -n $(( $LINES-1 )) < $INPUT_FILE > $OUTPUT_FILE
head -n 1 < $INPUT_FILE >> $OUTPUT_FILE
