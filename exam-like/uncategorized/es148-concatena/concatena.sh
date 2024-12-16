#!/bin/bash

USR_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/std*"

echo -n "" > output.txt
for STD_FILE in $USR_PATH
do
	head -n 4 $STD_FILE | tail -n 3 >> output.txt
done

