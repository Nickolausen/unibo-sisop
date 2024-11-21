#!/bin/bash

# Display dei comandi
set -v

# 0 = File descriptor di stdin
# 1 = File descriptor di stdout
# 2 = File descriptor di stderr
echo "CIAO" 1>&2

# Comando di verifica
echo "CIAO" 1>&2 | grep -v "CIAO"

set +v
