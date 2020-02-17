#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your na$
# Task 2: Dynamically generate the value for your hostname variable using the $
# Task 3: Add the time and day of the week to the welcome message using the fo$
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday m$
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
myname="$USER"

weekday=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############

title="moonday is firstday"
title2="tuesdy is secondday"
title3="wednesday is thirdday"
title4="thursday is forthday"
title5="friday is fiffthday"
title6="saturday is secondlastda"y
title7="sunday is sunnyday"

if [ "weekday" = "Monday" ]
then
cat <<EOF
Welcome to planet $hostname, "$title $USER"
It is $currenttime on $weekday

EOF

elif [ "$weekday"="Tuesday" ]
then
display=$(cat <<EOF
Welcome to planet $hostname, "$title2 $USER"
It is $currenttime on $weekday

EOF
)
elif [ "$weekday" = "Wednesday" ]
then
cat <<EOF
Welcome to planet $hostname, "$title3 $USER"
It is $currenttime on $weekday

EOF
 
elif [ "$weekday" = "Thursday" ]
then
cat <<EOF
Welcome to planet $hostname, "$title4 $USER"
It is $currenttime on $weekday

EOF
 
elif [ "$weekday" = "Friday" ]
then
cat <<EOF
Welcome to planet $hostname, "$title5 $USER"
It is $currenttime on $weekday

EOF
 
elif [ "$weekday" = "Saturday"]
then
cat <<EOF
Welcome to planet $hostname, "$title6 $USER"
It is $currenttime on $weekday

EOF
 
elif [ "$weekday" = "Sunday" ]
then
cat <<EOF
Welcome to planet $hostname, "$title7 $USER"
It is $currenttime on $weekday

EOF
 
fi
cat  <<EOF
$(cowsay $display)
EOF
