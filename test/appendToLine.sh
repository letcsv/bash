#!/bin/bash
#cat "3lines.txt" | ./appendToLine.sh
#./appendToLine.sh "one" "two" "three"
cat "3lines.txt" | ./appendToLine.sh "one" "two" "three" | ./appendToLine.sh "four"
