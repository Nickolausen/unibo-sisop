#!/bin/bash

FILES=$(ls -p | grep -v /)

for FILE1 in ${FILES}; do
	for FILE2 in ${FILES}; do
		for FILE3 in ${FILES}; do
			echo "(${FILE1};${FILE2};${FILE3})"
		done
	done
done
