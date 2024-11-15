#!/bin/bash

CONT=1
RIS=1

while [ ${CONT} -le "$@" ]; do
	RIS=$((${RIS} * ${CONT}))
	CONT=$((${CONT} + 1))
done

echo "${RIS}"
