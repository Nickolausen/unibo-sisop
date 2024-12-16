#!/bin/bash

FOUND_DENUNCIA=0
FOUND_PROCESSO=0

while read ID_VERDETTO TESTO_VERDETTO ; do 
	while read RIF_DENUNCIA RIF_VERDETTO ; [[ $? == 0 && $FOUND_PROCESSO != 1 ]] ; do
		if [[ $ID_VERDETTO == $RIF_VERDETTO ]] ; then
			FOUND_PROCESSO=1
			while read NOME COGNOME ID_DENUNCIA RAGIONE_DENUNCIA ; [[ $? == 0 && $FOUND_DENUNCIA != 1 ]] ; do
				if [[ $RIF_DENUNCIA == $ID_DENUNCIA ]] ; then
					FOUND_DENUNCIA=1
					echo "$NOME $COGNOME	$RAGIONE_DENUNCIA		$TESTO_VERDETTO"
				fi
			done < ./denunce.txt
		fi
	done < ./processi.txt
	FOUND_DENUNCIA=0
	FOUND_PROCESSO=0
done < ./verdetti.txt
