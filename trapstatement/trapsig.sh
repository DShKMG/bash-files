#!/bin/bash
SECONDS=0
counter=0
trap 'echo "Interrrut Signals detected. Program will resume"' 3 2 20
trap 'echo "Program has been terminated succesfully.Total runtime $SECONDS seconds. Total count : $counter times"' 0
while true
do
	read -p "Type a number (0 to exit) : " n
	counter=$((counter+1))
	if [ $n -eq 0 ] 
	then
		echo "Input0 detected. Terminating the program"
		break
	fi
done
