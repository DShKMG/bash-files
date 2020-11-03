#!/bin/bash


echo "sqrt(15*15) > 10" | bc
checkvar=10
val=$(echo "sqrt(15*15)" | bc)
if [ $(echo "sqrt(15*15)" | bc) -gt $checkvar ]
then
echo "Bigger"
fi
