#!/bin/bash

FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h" -print`
if [[ -z $FILES ]] ; then
	echo "Nessun file trovato!"
	exit 0
fi

for MOST_RECENT in $FILES ; do
	break
done

for FILE in $FILES ; do
	if (( $FILE ))
done
