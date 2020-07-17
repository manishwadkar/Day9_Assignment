#!/bin/bash -x

echo "Welcome to employee wage computation program"

isPresent=1

attendance=$((RANDOM%3))

WagePerHour=20
FullDayHour=8
wage=0
ParttimeHour=4
WorkingDaysPerMonth=20

case "$attendance" in
1)
	wage=$(($WagePerHour*$FullDayHour*$WorkingDaysPerMonth))
	echo "Employee is present"
	echo "Monthly wage is " $wage
;;
2)
	wage=$(($WagePerHour*$ParttimeHour*$WorkingDaysPerMonth))
        echo "Employee is present (PART TIME)"
        echo "Monthly wage is " $wage
;;
0)
	echo "Employee is absent"
	echo "Monthly wage is " $wage
;;
*)
	echo "Invalid option"
;;
esac
