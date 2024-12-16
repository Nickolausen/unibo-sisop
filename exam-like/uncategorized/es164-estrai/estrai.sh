#!/bin/bash
OLD_IFS=$IFS
IFS=",\n"
SUM=0

while read P1 NUM P2 ; do
	SUM=$(($SUM+$NUM))
	echo "$P1,$P2"
done < ./input1.txt

echo "$SUM"
IFS=$OLD_IFS
