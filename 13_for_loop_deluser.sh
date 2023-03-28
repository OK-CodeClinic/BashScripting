#!/bin/bash
# Auth: Kehinde Omokungbe <kehindefranklin@gmail.com>

MYUSER="Nelson Roland Bryan Keneth James Siviyon Myra Sonya Quiara"

for usr in $MYUSER
do
	date
	echo "Removing User $usr"
	userdel -r $usr
	echo "$usr has been succefully removed as a user"
	echo "......................................................"

	sleep 2

done
