#!/bin/bash
FILENAME=$1
[ -z "$FILENAME" ] && IFS='' read -d '' -r FILENAME
# skip first header line
[ ! -z "$FILENAME" ] && tail -n +2 $FILENAME

