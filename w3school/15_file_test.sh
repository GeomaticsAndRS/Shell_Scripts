#!/bin/bash

file="/shell-scripts/15file.log"

if [ -r $file ]
then
	echo " $file can read"
else
	echo " $file cannot read"
fi

if [ -w ${file} ]
then
	echo " ${file} can write"
else
	echo "${file} can not write"
fi

if [ -x $file ]
then
	echo "$file can excute"
else
	echo "$file cannot be excuted"
fi

if [ -f $file ]
then
	echo "$file is normal file"
else
	echo "$file is not a normal file"
fi

if [ -d $file ]
then
	echo "$file is a directory"
else
	echo "$file is not a directory"
fi

if [ -s $file ]
then
	echo "$file is empty"
else
	echo "$file is not empty"
fi

if [ -e $file ]
then
	echo "$file exist"
else
	echo "$file is not exist"
fi
