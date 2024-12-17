#!/bin/bash

if (( $# != 1 )) ; then
	echo "Inconsistent nr. of args! (Received: $#)"
	exit 1
fi 

./inverti2-logic.sh < $1
