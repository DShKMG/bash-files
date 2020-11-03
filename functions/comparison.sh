#!/bin/bash

stringa="UNIX"
stringb="GNU"

echo "Are $stringa and $stringb are equal ?"
[ $stringa =  $stringb ]
echo $?

numa=100
numb=100

echo "Is $numa equal to $numb ?"
[ $numa -eq $numb ]
echo $?

echo "100 = 50 ?"
[ 100 -eq 50 ];echo $?
