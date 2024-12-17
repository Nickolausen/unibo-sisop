#!/bin/bash

TEMP_FILE="tmp.txt"
touch $TEMP_FILE

while read ROW ; do echo $ROW ; done > $TEMP_FILE

cat $TEMP_FILE | while read NOME COGNOME MULTA GG MM AA ; do
	echo "$MULTA $(grep $MULTA $TEMP_FILE -c)"
done | uniq 

rm $TEMP_FILE
