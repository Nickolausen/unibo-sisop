#!/bin/bash

cat ./lista.txt | grep "SISTEMI OPERATIVI" -B 1 --no-group-separator | grep "[0-9]" | while read MATR RESTO ; do 
	echo $MATR
done
