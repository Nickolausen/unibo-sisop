#!/bin/bash

INCLUDE_PATH="/Library/Developer/CommandLineTools/SDKs/MacOSX14.sdk/usr/include/*.h"
ARGS=""

for FILE in $(ls -S1 ${INCLUDE_PATH} | head -n 7) ; do 
	ARGS+="${FILE} "	
done

./contaseparatamente.sh ${ARGS}
