#!/bin/bash

echo "1. install lamp"
echo "2. install lnmp"
echo "3. exit"

read -p "please input the option number:" option

function install(){

case $option in
	1)
		if [ -f lamp.sh ]
		then 
			sh lamp.sh
		else 
			echo "no lamp.sh scripts"
		fi
	;;

	2)
		if [ -f lnmp.sh ]
		then 
			sh lnmp.sh
		else 
			echo "no lnmp.sh scripts"
		fi
	;;

	3)
		exit 0
	;;

	*)
		echo "please input 1 to 3"
		main
esac
}

function main(){
	read -p "please input the option number:" option
	install
}

main

