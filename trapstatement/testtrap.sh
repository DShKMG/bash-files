#!/bin/bash
# capture an interrupt # 0
trap 'echo "Exit 0 signal detected..."' 0

# display something
echo "This is a test"

# exit shell script with 0 signal
exit 0

#Since when signal 0 will be used at the end, the trap command will be executed at the top
#Therefore firstly it will write that it is a test then it will execute what is written on the exit zero signal

