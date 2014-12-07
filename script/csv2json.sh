#!/bin/sh
#
# usage example:
#    ./csv2json.awk s_and_p_2011_two.csv

INPUT_FILE=$1

awk -v nlines=$(wc -l < $INPUT_FILE) -F \, -f csv2json.awk < $INPUT_FILE | tr -d '[:space:]'
