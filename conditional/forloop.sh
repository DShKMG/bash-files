#!/bin/bash

echo "Inputted variables $*"
echo "Total variables $#"

maxvar=5

if [ $# -lt $((2)) ]
then
	echo "Number of minimum input is 2"
	echo "The arguments does not match the requirements"
	echo "Terminating"
else
	
	if [ $# -gt $((2)) ]
	then
	echo "Number of maximum input is 2"
	echo "The arguments does not match the requirements"
	echo "Taking first two variables only"
	echo "Taken Variables are : $1 $2"
	fi

	if [ $(echo "sqrt(($1-$2)*($1-$2))" | bc) -gt 5 ] 
	then
		echo "Printing val exceeds the limits"
		echo "Limit : $maxvar"
		echo "Minimum required to print this loop :"
		echo "sqrt(($1-$2)*($1-$2))" | bc
	else
		if [ $1 -gt $2 ]
		then
			echo "Reverse counting procedure has been started"
			for ((i=$2;i<$1;i++))
			do
				echo "Counter : $i"
			done
		else
			echo "Reverse counting procedure has been started"
			for ((i=$1;i<$2;i++))
			do
				echo "Counter : $i"
			done
		fi
	fi
fi
