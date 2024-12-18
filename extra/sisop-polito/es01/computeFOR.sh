#!/bin/bash
# TODO: da finire

if (( $# != 1 )) ; then
	echo "Insuff. args! $#" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1!" 1>&2
	exit 1
fi

LINES=$(cat $1 | wc -l)

for ((IDX=0;IDX<LINES;IDX=IDX+1))
do
	read x y z
	echo $(( 3*$x*$x + 4*$y + 5*$z))
done < $1
