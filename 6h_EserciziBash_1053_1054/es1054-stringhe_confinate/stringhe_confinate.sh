#!/bin/bash
# TODO: non funziona! è identico a es1053-raggruppa/raggruppa.sh

DELETEME_FILE="./giavisti.txt"
echo "" -n > $DELETEME_FILE

while read ANNO LOCALITA MOTIVO DANNI ; do
	GIA_VISTO=`cat $DELETEME_FILE | grep $MOTIVO`
	# se non è presente
	if [[ $GIA_VISTO == "" ]]; then
		OCC=`cat ./cadutevic.txt | grep $MOTIVO | wc -l`
		echo "$MOTIVO $OCC"
		echo $MOTIVO >> $DELETEME_FILE
	fi
done < ./cadutevic.txt

rm $DELETEME_FILE
