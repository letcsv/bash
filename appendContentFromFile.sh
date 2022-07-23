#!/bin/bash
if [ ! -t 0 ]; then
  IFS='' read -d '' -r INPUT
  echo -n "${INPUT}"
fi
if [ ! -z "$1" ]; then
   [ -r "$1" ] && cat $1
fi
