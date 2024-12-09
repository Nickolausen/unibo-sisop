#!/bin/bash

(
	../es45-headANDtail/headANDtail.sh; 
	../es46-tailANDcut/tailANDcut.sh
) | 
(
	../es47-reverse-stdin/reverse-stdin.sh; 
	../es48-readonly/readonly.sh; 
	../es49-lengthcount/lengthcount.sh
)
