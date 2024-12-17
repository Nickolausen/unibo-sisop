#!/bin/bash

if read ROW ; then
	./inverti2-logic.sh
	echo $ROW
fi
