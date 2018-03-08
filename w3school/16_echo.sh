#!/bin/bash

echo "\" show \"\" \""

read name
echo "$name"

echo $1

echo -e "abc \n" #开启转义 -e

echo -e "do not change line \c" #不换行 -c

echo " wirte to file" > 16file.log

echo '$name\"' #原样输出字符串

echo `date`


