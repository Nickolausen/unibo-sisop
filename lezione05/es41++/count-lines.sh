#!/bin/bash

for FILE in /Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/* 
do
	echo "Per il file $FILE:"  
	
	LINES=`cat $FILE | grep "*"`
	echo $LINES
	echo "Number of lines: ${#LINES}"
done 
