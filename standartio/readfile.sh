#!/bin/bash

fn=$1
if [ -z $fn ]
then
	printf "\n\n"
	echo "*********************************************************"
	echo "NULL file name"
	echo "Cannot find the file"
	echo "Please specify the command by"
	echo "./readfile.sh FILENAME"
	echo "*********************************************************"
	printf "\n\n"
else
	exec 3<$fn
	printf "\n\n"
	echo "*********************************************************"
	echo "Reading from $1"
	echo "*********************************************************"
	printf "\n\n"
	while IFS= read -u 3 -r line
	do
		echo "$line"
	done
	printf "\n\n"
	echo "*********************************************************"
	echo "Closing file $1"
	echo "*********************************************************"
	printf "\n\n"
	exec 3>&-
fi

