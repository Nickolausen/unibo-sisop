#!/bin/bash

while read ROW ; do
	echo "$ROW" | sed 's/\*/\\\*/g;s/\[/\\\[/g;s/\]/\\\]/g;s/\?/\\\?/g' 
done
