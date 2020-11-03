#!/bin/bash

#Function decleration here
function userdetails {
	echo "User Name : $(whoami)"
	echo "Home  directory  $HOME"
}

# This is the place where we call the function
# It is same with python where we call it directly

userdetails
