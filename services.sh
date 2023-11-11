#!/bin/bash
services="sshd jenkins"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "services $i is not running" | mail -s "the services are not running" naveennaidu890@gmail.com
	fi
done


