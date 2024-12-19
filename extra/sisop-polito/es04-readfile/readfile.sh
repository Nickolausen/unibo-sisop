#!/bin/bash

if (( $# != 1 )) ; then
	echo "Insuff. nr. of args! Received: $#" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1" 1>&2
	exit 1
fi

ROW_IDX=1
WORD_IDX=1

while read ROW ; do
	echo "${ROW_IDX} ${ROW}"
	for WORD in $(echo $ROW | sed 's/ /\\n /g')
	do
		echo -en "\t${WORD_IDX} ${WORD}"
		(( WORD_IDX=$WORD_IDX+1 ))
	done
	echo ""
	(( ROW_IDX=$ROW_IDX+1 ))
done < $1
