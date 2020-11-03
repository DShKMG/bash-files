#!/bin/bash

#This is a until counter where it runs until condition is false
#Similar with the while but just reverse
#We use a function where it gets a input value as counter and counts backwards towards it
maxval=10
function counter
{
	cs=$1
	until [ $cs -lt $2 ]
	do
		echo "Your variable : $cs"
	let cs-=1
	done
}

#In order to not to put program into the infinite loop we had to swap variables when user input in wrong order
#This is done via swapping their positions when $1 has to be bigger than $2 but it does not satisfy
if [ $(echo "sqrt( $1*$2 )" | bc) -lt $maxval ]
then
	echo "Your input variables $*"
	if [ $1 -lt $2 ]
	then
		counter $2 $1
	fi
	counter $1 $2
else
        echo "Your counter value is bigger then 10"
        echo "Total number of loops :"
        echo "sqrt( $1*$2 )" | bc
fi
