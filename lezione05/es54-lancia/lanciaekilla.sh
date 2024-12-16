#!/bin/bash

PIDS=$(./lanciaeprendipid.sh)
kill -9 $PIDS
