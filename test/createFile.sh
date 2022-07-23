#!/bin/bash
echo "text" | ./createFile.sh "filename.txt"
./createFile.sh "filename.txt"
./createFile.sh
cat "filename.txt"