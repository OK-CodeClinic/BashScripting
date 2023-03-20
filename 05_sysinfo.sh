#!/bin/bash

echo "Welcome $USER on $HOSTNAME."
echo " "

echo "#############################################"
echo " "
echo " Below is the current available system Info, please check; "

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda' | awk '{print $4}')


## Making use of the Variables created
echo " "
echo "#############################################"
echo "Available free RAM in the system is $FREERAM mb"
echo "Current Load average is $LOAD."
echo "Free Root Partition size is $ROOTFREE."
echo " "
