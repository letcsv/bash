#!/bin/bash
INPUT=
if [ ! -t 0 ]; then
  IFS='' read -d '' -r INPUT
  echo -n "${INPUT}"
fi
if [ ! -z "$1" ]; then
  # Script to split a string based on the delimiter
  if [ -r "$1" ]; then
    # Script to split a string based on the delimiter
    header=$(head -n 1 $INPUT)
    IFS=','
    params=(${header})
    IFS=""
    params=(${params[@]})
    #Print the split string
    [ ! -z "$2" ] && [ ! -r "$2" ] && echo -n "" > $2
    for i in "${params[@]}"
    do
        echo $i
        [ -r "$2" ] && echo $i >> $2
        #echo -n "$i"
    done
  fi
fi
