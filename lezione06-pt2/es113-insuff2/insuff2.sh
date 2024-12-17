#!/bin/bash

RIS_PROVA1="./RisultatiProvaPratica1.txt"
RIS_PROVA2="./RisultatiProvaPratica2.txt"

while read NOME COGNOME MATR VOTO ; do
	CORRISPONDENZA=$(grep $MATR $RIS_PROVA1)
	if [[ $CORRISPONDENZA == "" && $VOTO -lt 18 ]] ; then
		echo $MATR $NOME $COGNOME $VOTO
	fi
done < $RIS_PROVA2 | sort -k 3
