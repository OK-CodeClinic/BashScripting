#!/bin/bash

###This Scripts print system info

#Checking the running uptme
echo " "
echo " The Uptime of the system is"
echo
uptime

# Checking Memory Usage
echo
echo "################################"
echo "The sytem Memory Utilization is;"
echo
free -m

# Checking Disk Usage
echo "################################"
echo
echo "Disk Utilization"
df -h

