#!/bin/bash

MYFILE=$1
NUM_LINES=$(cat $MYFILE | wc -l)
cat $MYFILE | tail -n $NUM_LINES 
