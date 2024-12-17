#!/bin/bash

if (( $# != 2 )) ; then 
	echo "errore: servono 2 argomenti: larghezza_minima  altezza_massima"
	exit 1
fi

LARGMIN=$1
ALTMAX=$2

# ORA nelle due variabili ci sono i parametri
# passati a riga di comando.
# Da qui in poi aggiungete quello che serve.
# Leggete il contenuto del file ./divani.txt
# ed usatelo opportunamente.

while read DIVANO LARGHEZZA ALTEZZA PROF ; do
	if [[ $LARGHEZZA -ge $LARGMIN && $ALTEZZA -le $ALTMAX ]] ; then
		echo "$DIVANO $LARGHEZZA $ALTEZZA $PROF"
	fi
done < ./divani.txt 


