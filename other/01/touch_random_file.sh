#!/bin/bash

work_dir=`pwd`

#echo "$work_dir"

#判断目录是否已经存在，如果存在则删除重建
function check_dir(){
	if [ -d "$work_dir/file" ]
	then 
		rm -rf $work_dir/file
		mkdir $work_dir/file
		echo "start to create file"
	else
		mkdir $work_dir/file
		echo "start to create file"
	fi
}

#使用random生产随机字节数据流作为输入，使用tr命令读取，并指定字符串范围为a-z，取前10个字母作为输出
function create_file(){
	cd $work_dir/file
	for i in $(seq 10)
	do 
		touch `tr -dc "a-z"</dev/random | head -c 10`.file
		echo "successfully create $i file"
	done
}

function check_file_and_count(){
	cd $work_dir/file
	num=`ls | wc -l`
	echo "$num"
}

function main(){
	check_dir
	create_file
	check_file_and_count
}

main


