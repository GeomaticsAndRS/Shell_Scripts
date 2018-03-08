#!/bin/bash

cp test test.bak
cat test | sed -i 's/\,/[ ]/g' > test2

cat test

function show(){
for i in `cat test`
do
	echo $i
done
}

show | sort | uniq -c | sort -r


