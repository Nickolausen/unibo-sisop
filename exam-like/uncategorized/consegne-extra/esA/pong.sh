#!/bin/bash

PROC_NAME=$0
PROC_NAME=${PROC_NAME%.sh}
PROC_NAME=${PROC_NAME#./}

OTHER_PROC=./ping.sh

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
