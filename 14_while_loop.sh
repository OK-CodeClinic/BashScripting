#!/bin/bash
# Auth: Kehinde Omokungbe <kehindefranklin@gmail.com>

venue=0

while [ $venue -lt 7 ]
do
	date
	echo "Checking Venues....."
	echo "The total numbers of venue availabe for this date is $venue"
	echo "....................................................."

	venue=$(( $venue + 1 ))
	sleep 1
done
echo "That's all the venue avaiable for now"
