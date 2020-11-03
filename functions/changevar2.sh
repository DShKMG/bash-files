#!/bin/bash
a=3
b=4

function myfunc() {
	echo "Var is changed as $a , $b to $1"
	a=$1
	b=$1
	
}

myfunc 5
echo "A : $a"

