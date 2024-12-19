#!/bin/bash

if (( $# < 1 )) ; then
	echo "Insuff. nr. of args! (Received $#)" 1>&2
	exit 1
fi

for FILE in "$@" ; do
	if [[ $FILE == $1 ]] ; then
		if [[ ! -d $FILE ]] ; then
			mkdir $1
		fi
	elif [[ ! -f $FILE ]] ; then
		echo "$FILE non esiste!" 1>&2
	else
		echo "Vuoi copiare $FILE in '$1'? ['y'=yes/'any char'=no]"
		read ANS
		if [[ $ANS == "y" ]] ; then
			cp $FILE $1
		fi
	fi
done
