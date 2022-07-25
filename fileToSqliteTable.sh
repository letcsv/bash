#!/bin/bash
INPUT=
if [ ! -t 0 ]; then
  IFS='' read -d '' -r INPUT
  echo -n "${INPUT}"
fi
if [  ! -z "$1" ]; then
  params=("$@")
  for i in "${params[@]}"; do
    echo -n "$i"
  done
fi
