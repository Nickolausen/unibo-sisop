#!/bin/bash

RES=""

for IDX in {1..$#..2}
do
	RES="${RES}${!IDX}"
done

echo "${RES}"
