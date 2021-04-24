#! /bin/bash

headcount=0
tailcount=0


for (( i=0 ; i<10 ; i++ ))
do
	checkRandom=$(($RANDOM%2))
	if [[ $checkRandom -eq 0 ]]
	then
		tailcount=$(($tailcount+1))
	elif [[ $checkRandom -ne 0 ]]
	then
		headcount=$(($headcount+1))
	fi
done

echo "Number of Tail wins:" $tailcount
echo "Number of Head Wins:" $headcount
