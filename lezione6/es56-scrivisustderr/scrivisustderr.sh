#!/bin/bash

while read ROW ; do
	FIRST="${ROW%% *}"
	echo "$FIRST" 1>&2
	echo "Evviva"
done
