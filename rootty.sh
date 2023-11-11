#!/bin/bash 
cd
var=ls -l | grep -i "^-" | awk '{print$NF}'
echo "$var"

