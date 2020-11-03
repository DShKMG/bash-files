#!/bin/bash

counter(){
	for ((i=0; i<$1;i++ ))
	do
		echo "Number is : $i"
	done
}

counter $1
