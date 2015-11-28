#!/bin/bash

cut -d" " -f1 $1 > .temp
cut -d" " -f2 $1 >> .temp

for i in `cat .temp | sort | uniq`
do
grep $i $2 | awk '{print $1,3,"green",20}'
done

rm .temp
