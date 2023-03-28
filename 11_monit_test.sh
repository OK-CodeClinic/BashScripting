#!/bin/bash

date

if [ -f /var/run/apache2/apache2.pid ]
then
	echo " Apache process is running smoothly"
else
	echo "Apache2 process is not running"
	echo "Starting Apache2 shortly"
	sleep 2

	systemctl start apache2
	if [ -f /var/run/apache2/apache2.pid ]
	then
		sleep 2
		echo "Apache2 process started succefully"
	else
		echo "Apache2 starting process failed. Please contact admin"
	fi
fi
