#!/bin/bash -x

printf "Please fill the User details and Registration \n"

echo "Enter Your First Name"
read FirstName

fname1="^[A-Z][a-zA-Z]{3,15}$"

if [[ $FirstName = ~$fname1 ]]
then
	echo yes;
else
	echo No;
fi
