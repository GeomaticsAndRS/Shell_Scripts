#!/bin/bash

str1='1 11 111111 1111111 1111111 11 111111 11111111 11111.'

for i in $str1
do
	num=`echo $i |wc -L`
	if [ $num -le 6 ]
	then
		echo $i
	fi
done

for i in $str1
do
	if [ ${#i} -le 6 ]
	then
		echo $i
	fi
done

