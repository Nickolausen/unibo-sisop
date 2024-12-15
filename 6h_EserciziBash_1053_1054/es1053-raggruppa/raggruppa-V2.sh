#!/bin/bash

# Un pelo ispirato alle sue soluzioni, ma giusto per provare 
# l'opzione -c di `grep` – molto molto yeah

while read DATA LOCATION MOTIVO DANNI ; do
	echo "$MOTIVO `grep $MOTIVO -c cadutevic.txt`" 
done < cadutevic.txt | sort | uniq 
