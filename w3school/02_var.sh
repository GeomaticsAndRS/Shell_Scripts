#!/bin/bash
your_name="test"
#变量名和值之间不能有空格
echo ${your_name}

for skill in a b c d; do
	echo "i am good at ${skill} lan"
done



#只读变量不能修改
myname="wang"
readonly myname
#myname="change"

#unset var可以删除变量名

myurl="www.baidu.com"
echo ${myurl}
unset myurl
echo ${myurl}



