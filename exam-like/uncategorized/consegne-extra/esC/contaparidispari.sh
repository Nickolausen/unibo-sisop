#!/bin/bash

if (( $# != 1 )) ; then echo "Incorrect nr. of args!" 1>&2 ; exit 1; fi
if [ ! -f $1 ] ; then echo "Cannot open $1!" 1>&2 ; exit 1 ; fi

IDX=1
PARI=0
DISPARI=0

while read NUM ; do
	if (( $IDX%2==0 )); then 
		(( PARI=$PARI+$NUM ))
	else 
		(( DISPARI=$DISPARI+$NUM )) 
	fi
	
	(( IDX=$IDX+1 ))
done < $1

echo "Somma pari: $PARI"
echo "Somma dispari: $DISPARI"
