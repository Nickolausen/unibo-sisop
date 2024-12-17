#!/bin/bash

OUT=""
while read LINE ; do
	OUT="${LINE}\n${OUT}"
done < $1

echo -e ${OUT/%\\n/""}
