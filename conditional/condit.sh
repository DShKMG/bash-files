#!/bin/bash

printffunc(){
	echo "Sum is $[ $1 + $2 ] "
}

echo "Total argument passed : $#"
echo "Accepted Argument number is 2"
echo "Passed arguments : $*"
echo "Accepted arguments : $1 $2"
printffunc $1 $2

