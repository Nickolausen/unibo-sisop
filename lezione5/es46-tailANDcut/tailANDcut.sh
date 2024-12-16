#!/bin/bash

INCLUDE_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/stdio.h"

if [ ! -e $INCLUDE_PATH ] ; then
	echo "$INCLUDE_PATH not found!" 
	exit 1
fi

tail -n 4 $INCLUDE_PATH | cut -b 3
