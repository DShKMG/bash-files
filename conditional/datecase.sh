#!/bin/bash

#Case commands here
function timezone
{
	echo "You logged in as $(whoami)"
	echo "You are now in $(date +"%:z %Z")"
	echo "Time is $(date +"%R")"
	echo "Today is $(date +"%A - %B %d 20%y")"
}

today=$(date +"%a")
case $today in
	Mon|Tue|Wed|Thu|Fri)
		echo "Good weekdays"
		timezone
		;;
	Sat|Sun)
		echo "Good weekends"
		timezone;;
	*);;
esac
#Case is done as
# case $var in
#	args|args1|args2|args3...)
#		command1
#		command2
#		command3
#		...
#		;;	#End of argument section 1
#	args3|args4|args5|args6...)
#		command4
#		command5
#		command6
#		...
#		;;	#End of argument section 2
#	*)		#End of else section without commands
#		;;
# esac
