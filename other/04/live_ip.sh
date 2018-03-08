#!/bin/bash

ip=192.168.137.

function check_ip(){
	for i in {1..10}
	do
		ping -c 2 -i 1 -q $ip$i >/dev/null
		#echo $?
		if [ $? = 0 ]
		then
			echo "$ip$i is live"
		else
			echo "$ip$I is dead"
		fi
	done
}

check_ip
