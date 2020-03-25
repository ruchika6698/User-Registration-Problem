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
		echo "First Name is Valid";
	else
		echo "First Name is Invalid";
	fi
}

function lastname()
{
	lname1="^[A-Z][a-zA-Z]{3,15}$"
	if [[ $LastName =~ $lname1 ]]
	then
		echo "Last Name is Valid";
	else
		echo "Last Name is Invalid";
	fi
}

function emailId()
{
	email="^([0-9a-zA-Z]+)([_+-.][0-9a-zA-Z])?[@][0-9a-zA-Z]+([.][a-z]{2,4})([.][a-z]{2})?$"
	if [[ $EmailAddress =~ $email ]]
	then
		echo "Email Address is Valid";
	else
		echo "Email Address is Invalid";
	fi
}

function mobilenumber()
{
	mobileNumber="^[0-9]{2}[ ][0-9]{10}$"
	if [[ $MobileNumber =~ $mobileNumber ]]
	then
		echo "Your Mobile Number is Valid"
	else
		echo "Your Mobile Number is Invalid"
	fi
}

function passwordRule1()
{
	rule1="^[a-zA-Z]{8,15}$"
	if [[ $Password =~ $rule1 ]]
	then
		echo "Your Password is Valid"
	else
		echo "Your Password is not Valid"
	fi
}
passwordRule1
