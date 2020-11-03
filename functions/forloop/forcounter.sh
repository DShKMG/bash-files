#!/bin/bash

function counter {
for ((i=0;i<$1;i++))
	do
	echo "Var $i : $1"
	done
}

echo "Input variable $*"
echo "Printing the counter variables..."
counter $1

