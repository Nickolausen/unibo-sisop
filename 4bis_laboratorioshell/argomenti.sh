#!/bin/bash

RES=""

for ((IDX=1;IDX<=$#;IDX=IDX+2))
do
	RES+=" ${!IDX}"
done

for ((IDX=2;IDX<=$#;IDX=IDX+2))
do
	RES+=" ${!IDX}"
done

echo "${RES}"
