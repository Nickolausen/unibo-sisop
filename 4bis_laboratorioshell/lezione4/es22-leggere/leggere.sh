#!/bin/bash

FILE=~/Desktop/DELETEME.txt
touch $FILE
echo "Prima riga" > $FILE
echo "Seconda riga" >> $FILE
echo "Terza riga" >> $FILE
IDX=1
while true 
do
	read RIGA < ~/Desktop/DELETEME.txt
	if (( $? != 0 ))
	then
		break
	else
		echo "Riga ${IDX}: ${RIGA}"
		IDX=$(( $IDX+1 ))
	fi
done	
