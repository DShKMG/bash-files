#!/bin/bash

#File I/O

FILENAME="inputoutput.txt"
exec 3<>$FILENAME

while IFS= read -u 3 -r line	#fd can be 3 4 5 etc depends on the file description.
do
                 echo "$line"
done

exec 3>&-
