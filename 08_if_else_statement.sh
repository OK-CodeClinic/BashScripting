#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -ge 100 ]
then
	echo " This is the IF block section"
	sleep 3
	echo " Your number is greater than 100"
	echo

	date
	echo

else
	sleep 3
	echo " Your have entered a number less than 100"

	date
	echo
fi


echo " Script execution completed Succefully"
