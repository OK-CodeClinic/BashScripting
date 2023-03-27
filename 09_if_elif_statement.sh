#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
	echo " 1 Active Network Interface is found"

elif [ $value -gt 1 ]
then
	echo " Multiple Newtowrk Interface are found"

else
	echo " No Active Network Interface"
fi
