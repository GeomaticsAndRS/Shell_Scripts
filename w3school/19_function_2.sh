#!/bin/bash

function add(){
	echo "input 1st num:"
	read num1
	echo "input 2nd num:"
	read num2

	echo " $num1 + $num2 is:"
	return $(($num1 + $num2))
}

echo "start"
add
echo $?
echo "end"
 
