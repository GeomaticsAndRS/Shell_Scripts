#!/bin/bash

a=10
b=20

value=`expr ${a} + ${b}`

echo "${a}+${b} : ${value}"

value=`expr ${a} - ${b}`

echo "${value}"

value=`expr $a \* $b`

echo "${value}"

value=`expr $b / $a`

echo "${value}"

value=`expr $b % $a`

echo "${value}"

if [ $a == $b ]
then
	echo "a = b"
fi
if [ $a != $b ]
then
	echo "a != b"
fi

