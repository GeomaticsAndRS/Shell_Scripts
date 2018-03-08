#!/bin/bash

a="abc"
b="efg"

if [ $a = $b ]
then
	echo "$a = $b?: a is same with b"
else
	echo "$a = $b?: a is different with b"
fi

if [ $a != $b ]
then
	echo "$a != $b?:yes"
else
	echo "$a != $b?:no"
fi

if [ -z $a ]
then
	echo "$a length is 0"
else
	echo "$a length is not 0"
fi

if [ -n $a ]
then
	echo "$a length is not 0"
else
	echo "$a length is 0"
fi

if [ $a ]
then
	echo "$a is not null"
else
	echo "$a is null"
fi

