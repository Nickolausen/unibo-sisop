#!/bin/bash

INCLUDE_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/stdio.h"

if [ ! -e $INCLUDE_PATH ] ; then
	exit 1
fi

head -n 5 $INCLUDE_PATH | tail -n 3
