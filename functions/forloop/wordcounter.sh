#!/bin/bash

counter(){
	for i  in $1
	do
		echo -n $1 | wc -c
	done
}

counter $1
