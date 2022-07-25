#!/bin/bash
./headerFromFileToLinesInFile.sh
./headerFromFileToLinesInFile.sh "test.csv"
./headerFromFileToLinesInFile.sh "test.csv" "header.txt"
echo "test.csv" | ./headerFromFileToLinesInFile.sh "header1.txt"



