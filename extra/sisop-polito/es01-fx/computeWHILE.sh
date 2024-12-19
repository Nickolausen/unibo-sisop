#!/bin/bash

if (( $# != 1 )) ; then
	echo "Insuff. args! $#" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1!" 1>&2
	exit 1
fi

while read x y z
do
	echo $(( 3*$x*$x + 4*$y + 5*$z))
done < $1
