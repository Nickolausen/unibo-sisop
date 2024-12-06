#!/bin/bash

RANDOM=$(( `date +%s` % 32768 ))
NUM_CHECK=0
while (( ${RANDOM}%10!=2 ))
do
	NUM_CHECK=$(($NUM_CHECK+1))
done

echo "RANDOM controllata $NUM_CHECK volte"
