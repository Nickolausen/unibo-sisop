#!/bin/bash
RESULT=0

for ((IDX=1;IDX<=$#;IDX=IDX+1)); do
	RESULT=$((RESULT+${!IDX}*${!IDX}))
done	

IDX_SUM=$(($#*($#+1)/2))
RESULT=$((RESULT-IDX))

echo ${RESULT}
