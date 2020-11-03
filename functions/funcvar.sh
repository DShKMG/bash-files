#!/bin/bash

a = 'A'
b = 'B'

function changevar(c) {
	local a = 'C'
	b = c
	echo "A : $a , B : $b"
}

echo "Before Calling"
echo "A : $a , B : $b"
changevar('D')
echo "After Calling"
echo "A : $a , B : $b"

