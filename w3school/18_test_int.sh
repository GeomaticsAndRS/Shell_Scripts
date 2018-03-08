#!/bin/bash

num1=100
num2=200

if test $[num1] -eq $[num2]
then
	printf "%d is same with %d\n" $num1 $num2
else
	printf "%d is diff with %d\n" $num1 $num2
fi

