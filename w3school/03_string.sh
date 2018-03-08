#!/bin/bash

#变量使用双引号定义，可以使用转义符，单引号则不可以，所以使用双引号

str="this is a string"
echo ${str}

str1="test for \"\\\", string0 is \"${str}\""
echo ${str1}
