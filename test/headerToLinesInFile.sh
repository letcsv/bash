#!/bin/bash
./headerToLinesInFile.sh
./headerToLinesInFile.sh "test.csv"
./headerToLinesInFile.sh "test.csv" "header.txt"
echo "test.csv" | ./headerToLinesInFile.sh "header.txt"



