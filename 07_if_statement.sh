#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
	echo " This is the IF block section"
	sleep 3
	echo " Your number is greater than 100"
	echo

	date
fi


echo "Script execution completed Succefully"
