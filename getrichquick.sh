#!/bin/bash
#name=$1
#age=$2
echo "What is your name?"
read name
echo "What is your age?"
read age
billionare=$((($RANDOM % 15) + $age))
echo "your public working directory is $PWD,
user is $USER,
working on shell $SHELL,
this is a new random number $RANDOM"
echo "Hello, $name, you are $age years old."
echo "Say my name $myName"
echo "You will become a Billionare at the age of $billionare"
