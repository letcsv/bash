#!/bin/bash
INPUT=
if [ ! -t 0 ]; then
  IFS='' read -d '' -r INPUT
  echo -n "${INPUT}"
fi
[ -z "$1" ] || [ ! -r "$1" ] && echo "!!! First Param, Source File" && exit
[ ! -z "$2" ] && [ ! -r "$2" ] && echo -n "" > $2
[ -z "$2" ] || [ ! -r "$2" ] && echo "!!! Second Param, Target File" && exit
# Script to split a string based on the delimiter
header=$(head -n 1 $1)
params=($(echo $header | tr "," "\n"))
#Print the split string
for i in "${params[@]}"
do
    echo $i >> $2
done
