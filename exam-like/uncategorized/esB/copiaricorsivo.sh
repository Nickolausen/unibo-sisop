#!/bin/bash
# TODO: Da testare e — molto probabilmente - da fixare

if (( $# < 2 )) ; then
	echo "Inconsistent nr. of args! (Received: $#)" 1>&2
	exit 1
fi

SRC=$1
DST=$2

if (( $3 != "" )) ; then
	TEXT_FILES=$3
else
	TEXT_FILES=$(ls $SRC/*.txt)
fi

FILE=$( echo $TEXT_FILES | head -n 1 )
if [[ -s $FILE ]] ; then 
	cp $FILE $DST
	./copiaricorsivo $SRC $DST $(echo $TEXT_FILES | grep -v $FILE)
fi
