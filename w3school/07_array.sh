#!/bin/bash
array_test=(
a
b
c
d
e
)

echo ${array_test[0]}

#echo all elem in array
echo ${array_test[@]}


#get length of array

length=${#array_test[@]}

echo ${length}

#get length of 1 elem in array

length0=${#array_test[0]}

echo ${length0}
