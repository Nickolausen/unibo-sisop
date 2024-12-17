#!/bin/bash

TEMP_FILE="tmp.txt"
touch $TEMP_FILE

while read ROW ; do echo $ROW >> $TEMP_FILE ; done

cat $TEMP_FILE | while read NOME COGNOME MULTA GG MM AA ; do
	echo "$MULTA $(grep $MULTA $TEMP_FILE -c)"
done | uniq 

rm $TEMP_FILE
