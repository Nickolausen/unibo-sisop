#!/bin/bash

sed -r 's/(".*") (".*") ("(.*)") (".*")/\4/' cadutevic.txt

# while read ROW ; do 
# 	echo $ROW | sed -r 's/(".*") (".*") ("(.*)") (".*")/\4/'  
# done < cadutevic.txt
