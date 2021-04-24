#! /bin/bash

checkRandom=$(($RANDOM%2))

if [[ $checkRandom -eq 0 ]]
then
	echo "TAILS"
else
	echo "HEADS"
fi
