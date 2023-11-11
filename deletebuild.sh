#!/bin/bash
path=$1
retained=$2
echo "$retained"
sudo ls -lrt $1 | awk 'NR>1 {print$NF}' > build
var1=`cat build | wc -l`
while read line
do 
	if [ $var1 -gt $2 ]
	then
		sudo rm -rf $1/$line
		var1=`expr $var1 - 1`
	fi
done < build
rm -rf build
