#!/bin/bash

./puntini.sh 30
^Z # sospendo lo script
SCRIPT_PID=$!
bg # lo mando in background
fg # lo rimetto in foreground
sleep 10 # attendo 10 secondi
^Z # sospendo lo script di nuovo 

kill $SCRIPT_PID
