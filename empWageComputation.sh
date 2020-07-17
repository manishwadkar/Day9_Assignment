#!/bin/bash -x

function getWorkHours() {

	case $1 in
	1)
		echo 8
		;;
	2)
		echo 4
		;;
	0)
		echo 0
		;;
	esac

}

echo "Welcome to employee wage computation program"

isPresent=1

attendance=$((RANDOM%3))

WagePerHour=20
FullDayHour=8
wage=0
ParttimeHour=4
WorkingDaysPerMonth=20
TotalHour=0
TotalDays=0

while [ $TotalHour -le 100 ] && [ $TotalDays -le 20 ]
do
	case "$attendance" in
	1)
		TotalDays=$(($TotalDays+1))
		getWorkHours=$( getWorkHours 1)
		TotalHour=$(($TotalHour+$getWorkHours))
	;;
	2)
		TotalDays=$(($TotalDays+1))
        	getWorkHours=$( getWorkHours 2)
                TotalHour=$(($TotalHour+$getWorkHours))
	;;
	0)
		TotalDays=$(($TotalDays+1))
	;;
	*)
		echo "Invalid option"
	;;
	esac
done

if [ $TotalHour -ge 100 ]
then
	wage=$(($WagePerHour*$TotalHour))
	echo "Monthly wage is " $wage
else
	wage=$(($WagePerHour*$TotalHour))
        echo "Monthly wage is " $wage
fi
