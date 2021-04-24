#! /bin/bash

headcount=0
tailcount=0
count=1

while [ $headcount -le 21 ] || [ $tailcount -le 21 ]
do
	result=$(($RANDOM%2))
	if [[ $result -eq 0 ]]
	then
		echo "HEADS"
		headcount=$(($headcount+1))
	elif [[ $result -eq 1 ]]
	then
		echo "TAILS"
		tailcount=$(($tailcount+1))
	fi

	if [ $headcount -eq 21 ]
	then
		echo "Head wins 21 times!"
		exit
	elif [ $tailcount -eq 21 ]
	then
		echo "Tail wins 21 times!"
		exit
	else
		echo "It's Tie!!"
	fi
	i=$(($i+1))
done
