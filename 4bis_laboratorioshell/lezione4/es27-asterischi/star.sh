#!/bin/bash

# Display dei comandi
set -v

# Leggo 4 parole, poi stampo solo le ultime due in ordine invertito
while read P1 P2 P3 P4 ; do
	echo "$P4 $P3"
done

set +v 
