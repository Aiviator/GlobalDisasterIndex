#!/bin/sh
#
# "inspired" by
#     http://www.epochconverter.com/

while read line
do
   DATE=`echo $line|cut -d \, -f 1`
   date +%s -d$DATE
done
