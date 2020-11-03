#!/bin/bash
maxlim=1000000
SECONDS=0
startt=$(date +%s)
echo "Current time is : $startt"
for ((i=0;i<$maxlim;i++))
do
	if [[ $i -eq $(($maxlim-1)) ]]
	then
		endt=$(date +%s)
		echo "Time reached at $endt"
		duration=$SECONDS
	fi
done
totaltime=$(($endt-$startt))
echo "It takes $totaltime seconds to complete this task..."
echo "Total in Seconds $duration"
