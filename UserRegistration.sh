#!/bin/bash -x

printf "Please fill the User details and Registration \n"

echo "Enter Your First Name :"
read FirstName
echo "Enter Your Last Name :"
read LastName
echo "Enter Your Email Address :"
read EmailAddress
echo "Enter Your Mobile Number :"
read MobileNumber
echo "Enter Your Password :"
read Password

function firstname()
{
	fname1="^[A-Z][a-zA-Z]{3,15}$"
	if [[ $FirstName =~ $fname1 ]]
	then
		printf "First Name is Valid \n";
	else
		printf "First Name is Invalid \n";
	fi
}

function lastname()
{
	lname1="^[A-Z][a-zA-Z]{3,15}$"
	if [[ $LastName =~ $lname1 ]]
	then
		printf "Last Name is Valid \n";
	else
		printf "Last Name is Invalid \n";
	fi
}

function emailId()
{
	email="^([0-9a-zA-Z]+)([_+-.][0-9a-zA-Z])?[@][0-9a-zA-Z]+([.][a-z]{2,4})([.][a-z]{2})?$"
	if [[ $EmailAddress =~ $email ]]
	then
		printf "Email Address is Valid \n";
	else
		printf "Email Address is Invalid \n";
	fi
}

function mobilenumber()
{
	mobileNumber="^[0-9]{2}[ ][0-9]{10}$"
	if [[ $MobileNumber =~ $mobileNumber ]]
	then
		printf "Your Mobile Number is Valid \n"
	else
		printf "Your Mobile Number is Invalid \n"
	fi
}

function password()
{
	rule="^[a-zA-Z0-9]*[@#$&*_+-]{1}[a-zA-Z0-9]*$";
	if [[ $Password =~ $rule ]]
	then
		printf "Password enter Successfully \n"
	else
		printf "Your Password is not Valid \n"
	fi
}

firstname
lastname
emailId
mobilenumber
password
