#!/bin/bash  
for ip in $@  
do 
echo $ip 
nc -v -z -w 1 $ip 80
nc -v -z -w 1 $ip 443
done
