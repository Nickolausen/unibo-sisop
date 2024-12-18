#!/bin/bash
# DA FIXARE: non devo avviare un nuovo processo ogni volta!

PROC_NAME=$0
PROC_NAME=${PROC_NAME%.sh}
PROC_NAME=${PROC_NAME#./}

OTHER_PROC=./pong.sh

while true
do
	sleep 1
	if [[ -f "${OTHER_PROC}.txt" ]] ; then
		rm "$0.txt"
		$OTHER_PROC &
		wait $!
	else
		echo $PROC_NAME
		touch "${OTHER_PROC}.txt"
	fi
done
