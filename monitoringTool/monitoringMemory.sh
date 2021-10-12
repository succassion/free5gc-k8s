#!/bin/bash

#monitoring Tool

while : 
do 
	clear
	echo "Memory Status(10sec)" 
        free -m -t
	sleep 10
done
