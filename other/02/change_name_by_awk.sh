#!/bin/bash

work_dir=`pwd`

function check_file(){
	cd ../01/file
	files=`ls | wc -l`
	for i in $files
		do
			echo "$i file exist"
		done
}

function change_name(){
	files=`ls`
	for i in $files
		do
			current_name=`echo $i |awk -F '.' '{print $1}'`
			mv $i $current_name.html
			echo "$i change to $i.html"
		done
}


check_file
change_name
