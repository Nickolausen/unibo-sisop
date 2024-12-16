#!/bin/bash
set -v
FILE_PATH=~/Desktop/DELETEME.txt

# begin DELETEME
touch $FILE_PATH
echo "Prima riga PAROLE" > $FILE_PATH
echo "Seconda riga SOLO PAROLE" >> $FILE_PATH
echo "Terza riga TANTE PAROLE" >> $FILE_PATH
# end DELETEME

# Carico il file descriptor del file indicato da FILE_PATH
exec 3< $FILE_PATH

# Se l'operazione ha avuto successo (exit code: 0), allora procedo
if (( $? == 0)); then
	IDX=1
	while read -u 3 P1 P2 P3 P4;
	do
		echo "$P3"
		IDX=$(( $IDX+1 ))
	done	
fi

# Chiudo il file descriptor precedentemente aperto
exec 3>&-
rm ${FILE_PATH}

set +v