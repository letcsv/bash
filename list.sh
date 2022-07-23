#!/bin/bash
FILENAME=$1
[ -z "$FILENAME" ] && IFS='' read -d '' -r FILENAME
[ ! -z "$FILENAME" ] && tail -n +1 $FILENAME

