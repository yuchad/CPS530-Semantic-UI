#!/bin/bash

N=`cat descriptions | wc -l`

echo var content = {
for i in `seq $N`; do
	title=`cat courses | head -$i | tail -1`
	description=`cat descriptions | head -$i | tail -1`
	echo "'$title': '$description',"	
done;

echo }
