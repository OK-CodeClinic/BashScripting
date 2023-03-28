#!/bin/bash
# Auth: Kehinde Omokungbe <kehindefranklin@gmail.com>

MYUSER="Nelson Roland Bryan Keneth James Siviyon Myra Sonya Quiara"

for usr in $MYUSER
do
	echo "Adding User $usr"
	useradd $usr
	id $usr
done
