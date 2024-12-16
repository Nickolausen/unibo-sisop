#!/bin/bash

IDX=0
# TODO: Da errore!!
while read ROW ; do 
	if(( $IDX%2==0 ))
	then
		echo "$ROW"
	fi
	(( IDX=$IDX+1 ))
done < merda.txt
