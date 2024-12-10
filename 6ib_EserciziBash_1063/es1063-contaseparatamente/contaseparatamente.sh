#!/bin/bash

# [Recall]
# 0 -> stdin
# 1 -> stdout
# 2 -> stderr

if [[ $# -lt 1 || $# -gt 9 ]] ; then
	echo "Inconsistent nr of args! (Received: $#)"
	exit 1
fi

for((IDX=1;IDX<=$#;IDX=IDX+1)); do
	if ((IDX%2==0)); then
#		echo "pari"
		cat ${!IDX} | wc -l
	else
#		echo "dispari"
		cat ${!IDX} | wc -l 1>&2
	fi
done
