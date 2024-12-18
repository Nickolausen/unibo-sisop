#!/bin/bash

if (( $# != 2 )) ; then echo "Error!" 1>&2 ; exit 1 ; fi

cut -d "," -f $2 $1
