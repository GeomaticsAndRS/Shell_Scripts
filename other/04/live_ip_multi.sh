#!/bin/bash

ip=192.168.137.


tmp_fifofile="/tmp/$.fifo"  
echo $tmp_fifofile  
mkfifo $tmp_fifofile  
exec 6<>$tmp_fifofile  
rm -rf $tmp_fifofile  
thread=254 
for ((i=0;i<$thread;i++))
	do  
	echo >&6  
	done
 
for ((i=1;i<255;i++))  
	do  
	read -u6  
	{  
		echo `date` :`ping -c 10 -i 1 -q $ip$i` >> `pwd`/ping.log
        	if [ $? = 0 ]
        	then
                	echo "$ip$i is live"
       		else
                	echo "$ip$i is dead"
        	fi
		echo >&6  
	} &  
done  

wait  
exec 6>&-  
exit 0  

