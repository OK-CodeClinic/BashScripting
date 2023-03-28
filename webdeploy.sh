#!/bin/bash

USR='devops'

for host in 'cat allhosts'
do
	echo "Connecting to $host"
	echo "Pushing Script to $host"
	scp 15_multiple_OS.sh $USR@$host: /tmp/

	echo "Executing Script on $host"
	ssh $USR@$host sudo /tmp/15_multiple_OS.sh
	ssh $USR@$host sudo rm -rf /tmp/15_multiple_OS.sh
	echo "............................................................"
done
