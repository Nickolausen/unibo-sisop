#!/bin/bash

MAX_INSTANCES=10

for ((i=0;i<$MAX_INSTANCES;i=i+1)) ; do
	./puntini.sh 5 1>&2 &
	echo -n "$! "
done
