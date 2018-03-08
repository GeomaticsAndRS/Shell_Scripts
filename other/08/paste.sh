#!/bin/bash


a=`cat employee.txt | wc -l`

echo "records in employee.txt is $a"

b=`cat bonus.txt | wc -l`

echo "records in bonus.txt is $b"

for (( i=1;i<${a};i++ ))
do
	sed -n '${i}p' employee.txt
done

