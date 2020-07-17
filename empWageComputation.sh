#!/bin/bash -x

echo "Welcome to employee wage computation program"

isPresent=1

attendance=$((RANDOM%3))

WagePerHour=20
FullDayHour=8
wage=0
ParttimeHour=4

if [ $attendance -eq $isPresent ]
then
	wage=$(($WagePerHour*$FullDayHour))
	echo "Employee is present"
	echo "Daily wage is " $wage
elif [ $attendance -eq 2 ]
then
	wage=$(($WagePerHour*$ParttimeHour))
        echo "Employee is present (PART TIME)"
        echo "Daily wage is " $wage
else
	echo "Employee is absent"
	echo "Daily wage is " $wage
fi
