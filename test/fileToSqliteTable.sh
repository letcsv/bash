#!/bin/bash
./fileToSqliteTable.sh "test.csv" "Tablename" "db.sqlite"
./fileAsTableOnSqlite.sh "test.csv" "Tablename" "db.sqlite"
./csvFileAsTableOnSqlite.sh "test.csv" "Tablename" "db.sqlite"
./mapCsvFileTOSqlite.sh "map.csv" "test.csv" "db.sqlite"


CSV_COL,SQL_COLUMN,TYPE



SOURCE_COL,TARGET_COL

TARGET_COL, TARGET_TYPE


