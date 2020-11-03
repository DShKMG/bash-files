#!/bin/bash
#This is used to check whether we can use the returned function as we though
math() {
    return $(( $1 + $2))
}

a=$1
b=$2
c=$(math $a $b)
echo "A value : $c"
echo "$* $# $?"
# Total entered numbers | Number of entries | Returned values
math 5 6
echo "$?"