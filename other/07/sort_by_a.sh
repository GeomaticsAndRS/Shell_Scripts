#!/bin/bash  
  
sed -i 's/\,\|\./ /g' test  
  
for i in `cat test`  
do  
    for j in `echo $i`  
    do  
    echo $j | awk -F '' '{for(i=1;i<=NF;i++)print $i}'  
    done  
done  
