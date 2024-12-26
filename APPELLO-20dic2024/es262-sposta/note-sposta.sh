#!/bin/bash

# File al di fuori della consegna - aggiunto in data 26 dic 2024
# per completezza

if (( $# != 1 )) ; then
	echo "Insuff. nr. of args! (Received: $#)" 1>&2
	exit 1
fi

if [ ! -f $1 ] ; then
	echo "Cannot open $1!" 1>&2
	exit 1
fi

# Nel laptop personale, in cui è installata la seguente versione bash: 
# GNU bash, version 5.2.37(1)-release (aarch64-apple-darwin23.4.0)
#
# il seguente comando non restituisce lo stesso output 
# che restituiva durante l'esame nelle VM LUbuntu del laboratorio 
# LINES=$(wc -l $1 | cut -d " " -f 1)
#
# equivalentemente, si può quindi usare
LINES=$(wc -l < $1)

cat $1 | tail -n $(( $LINES-1 )) > "$1.copy"
cat $1 | head -n 1 >> "$1.copy"
