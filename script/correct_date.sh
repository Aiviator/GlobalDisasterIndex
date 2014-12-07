#!/bin/sh
#
# usage example:
#    ./correct_date.sh dow_jones_shanghai_2011_two.csv

INPUT_FILE=$1

cat $INPUT_FILE | awk -F'[/,]' '{print $3 "-" $1 "-" $2 "," $4}'
