#!/bin/bash -x

printf "Please fill the User details and Registration \n"

echo "Enter Your First Name :"
read FirstName
echo "Enter Your Last Name :"
read LastName
echo "Enter Youe Email Address :"
read EmailAddress

fname1="^[A-Z][a-zA-Z]{3,15}$"
lname1="^[A-Z][a-zA-Z]{3,15}$"
email="^([0-9a-zA-Z]+)([_+-.][0-9a-zA-Z])?[@][0-9a-zA-Z]+([.][a-z]{2,4})([.][a-z]{2})?$"

function firstname()
{
	if [[ $FirstName =~ $fname1 ]]
	then
		echo "First Name is Valid";
	else
		echo "First Name is Invalid";
	fi
}

function lastname()
{
	if [[ $LastName =~ $lname1 ]]
	then
   	echo "Last Name is Valid";
	else
   	echo "Last Name is Invalid";
	fi
}

function emailId()
{
	if [[ $EmailAddress =~ $email ]]
	then
		echo "Email Address is Valid";
	else
		echo "Email Address is Invalid";
	fi
}
emailId

