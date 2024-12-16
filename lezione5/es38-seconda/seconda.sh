#!/bin/bash

if [[ $# != 1 ]]; then 
	echo "Insufficient number of args! (received: $#)"
	exit 1
fi

OUT=""
while read P1 P2 P3 P4; do
	OUT+=$P2	
done < $1

echo "Risultato: $OUT"
