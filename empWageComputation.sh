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
i=0

while [ $TotalHour -le 100 ] && [ $TotalDays -le 20 ]

do
	case "$attendance" in
	1)
		TotalDays=$(($TotalDays+1))
		getWorkHour=$( getWorkHours 1)
		dailywage[$i]=$(($getWorkHour*$WagePerHour))
		i=$(($i+1))
		TotalHour=$(($TotalHour+$getWorkHour))
	;;
	2)
		TotalDays=$(($TotalDays+1))
        	getWorkHour=$( getWorkHours 2)
		dailywage[$i]=$(($getWorkHour*$WagePerHour))
        	i=$(($i+1))
                TotalHour=$(($TotalHour+$getWorkHour))
	;;
	0)
		getWorkHour=$( getWorkHours 0)
		dailywage[$i]=$(($getWorkHour*$WagePerHour))
        	i=$(($i+1))
		TotalDays=$(($TotalDays+1))
	;;
	*)
		echo "Invalid option"
	;;
	esac
done

echo "Daily wage: " ${dailywage[@]}

if [ $TotalHour -ge 100 ]
then
	wage=$(($WagePerHour*$TotalHour))
	echo "Monthly wage is " $wage
else
	wage=$(($WagePerHour*$TotalHour))
        echo "Monthly wage is " $wage
fi
