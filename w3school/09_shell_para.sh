#!/bin/bash
# test parameters

echo "shell parameters:";
echo " file is $0";
echo " 1st para is $1";
echo " 2nd para is $2";
echo " 3rd para is $3";

echo " 1st para is $1";
echo " para num is $#";

echo "script id is $$";

echo " 	后台运行的最后一个进程的ID号 $!";

echo "显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。$?";

#以一个单字符串显示所有向脚本传递的参数。
#如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。

echo " all para is "$*""
