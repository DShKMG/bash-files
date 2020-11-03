#!/bin/bash

maxval=10
minvar=2
#echo "$# $*"
# Pound for number of input
# Star for inputted variables
if [ $# -lt $minvar ]
	then
		echo "In order to make a counter loop we require two numbers"
		echo "You have inputted less then 2 numbers"
		echo "Program will be terminated"
	else
		if [ $(echo "sqrt( ( $1-$2 ) * ($1-$2) )" | bc) -gt $maxval ]
			then
				echo "Given values are bigger than max allowable print value"
				echo "Max allowable print value : $maxval"
				echo "Your values size :"
				echo "sqrt( ( $1-$2 ) * ($1-$2) )" | bc
		else
			if [ $1 -gt $2 ]
				then
					echo "Swapping values for preventing infinite loops"
		                        echo "Total variables are $*"
					echo "Counting from $2  to $1"
					cs=$2
					while [ $cs -lt $1 ]
					do
						cs=$(( cs+1 ))
						echo "Variable : $cs"
					done
			else
					echo "Total variables are $*"
					echo "Counting from $1 to $2"
					cs=$1
					while [ $cs -lt $2 ]
					do
						cs=$(( cs+1 ))
						echo "Variable : $cs"
					done
			fi
		fi
fi
