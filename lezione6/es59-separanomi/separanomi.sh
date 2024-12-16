#!/bin/bash
# TO DO
echo $PATH | sed 's/:/\\\n/g;s/\\\//\\\n/g'
