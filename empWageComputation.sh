#!/bin/bash -x

echo "Welcome to employee wage computation program"

isPresent=1

attendance=$((RANDOM%2))

WagePerHour=20
FullDayHour=8
wage=0

if [ $attendance -eq $isPresent ]
then
	wage=$(($WagePerHour*$FullDayHour))
	echo "Employee is present"
	echo "Daily wage is " $wage
else
	echo "Employee is absent"
	echo "Daily wage is " $wage
fi
