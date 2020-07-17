#!/bin/bash -x

echo "Welcome to employee wage computation program"

isPresent=1

attendance=$((RANDOM%2))

if [ $attendance -eq $isPresent ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
