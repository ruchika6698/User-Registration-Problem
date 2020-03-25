#!/bin/bash -x

printf "Please fill the User details and Registration \n"

echo "Enter Your First Name :"
read FirstName
echo "Enter Your Last Name :"
read LastName



fname1="^[A-Z][a-zA-Z]{3,15}$"

if [[ $FirstName =~ $fname1 ]]
then
	echo yes;
else
	echo No;
fi

lname1="^[A-Z][a-zA-Z]{3,15}$"

if [[ $LastName =~ $lname1 ]]
then
   echo yes;
else
   echo No;
fi
