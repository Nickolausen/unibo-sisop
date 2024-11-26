#!/bin/bash

echo "$$"

if [[ I -eq I_MAX ]]; then 
	exit 0
else
	I=$(($I+1))
	./figlio.sh
fi
