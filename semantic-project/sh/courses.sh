#!/bin/bash

N=`cat courses | wc -l`

#echo var content = [
for i in `seq $N`; do
	line=`cat courses | head -$i | tail -1`
#	echo "{title: '$line'},"
	echo "<option value=\"$line\">$line</option>"
done;

#echo ]
