#!/bin/bash

OUT_FILE="download.sh"
if [[ -e $OUT_FILE && -x $OUT_FILE ]]; then
	exit 0
fi

curl http://www.cs.unibo.it/~ghini/didattica/sistemioperativi/ESERCIZI/esprcond_errato.sh > $OUT_FILE
chmod +x $OUT_FILE
