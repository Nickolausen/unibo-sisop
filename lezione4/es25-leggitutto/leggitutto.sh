#!/bin/bash

# Display del codice
set -v

FILE_URL="http://www.cs.unibo.it/~ghini/didattica/sistemioperativi/ESERCIZI/miofileNoNL.txt"
IDX=1

# Scarico il contenuto del file, stampandolo su stdout;
# la stampa viene intercettata da read, che ne legge riga per riga;
# se riesco a leggere la riga ($? == 0) oppure quanto letto è diverso da una stringa vuota,
# allora stampo la riga letta

curl $FILE_URL | while read RIGA ; [[ $? == 0 || $RIGA != "" ]]; do
	echo "[$IDX. READ] $RIGA"
	IDX=$(($IDX + 1))
done

set +v
