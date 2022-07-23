#!/bin/bash
FILENAME=$1
CONTENT=
[ ! -t 0 ] && IFS='' read -d '' -r CONTENT
[ -z "$FILENAME" ] && FILENAME=$CONTENT
[ -z "$FILENAME" ] && [ -z "$CONTENT" ] && echo "input data is empty" && exit
#
echo -n "$CONTENT" > $FILENAME
#if [ ! -z "$FILENAME" ] && [ -z "$CONTENT" ]; then
#  touch "${FILENAME}"
#else
#  echo -n "$CONTENT" > $FILENAME
#fi
