#!/bin/bash
#
INPUT=$1
if [ ! -t 0 ]; then
  IFS='' read -d '' -r INPUT
  [ -z "$2" ] && OUTPUT=$1
else
  OUTPUT=$2
fi
#
[ -z $INPUT ] && echo "!!! First Param, Source File" && exit
[ ! -r $INPUT ] && echo "!!! NOT READABLE: $INPUT" && exit
#
[ -z "$OUTPUT" ] && echo "!!! Second Param, Target File" && exit
[ ! -w "$OUTPUT" ] && echo -n "" > $OUTPUT
[ ! -r "$OUTPUT" ] && echo "!!! NOT READABLE: $OUTPUT" && exit
#echo $OUTPUT
# Script to split a string based on the delimiter
header=$(head -n 1 $INPUT)
IFS=','
params=(${header})
IFS=""
params=(${params[@]})
#Print the split string
for i in "${params[@]}"
do
    echo $i >> $OUTPUT
done
