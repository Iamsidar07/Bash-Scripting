#!/bin/bash
# loops
# While loop 
# initial=1
# while [[ $initial -le 10 ]]; do
  # echo "This is my $initial pushups."
  # ((initial++))
# done
# initial=0
# while [[ $initial -le 10 ]]; do
  # read -p "Pushups $initial: press enter to continue"
  # ((initial++))
# done
# echo "Congrats! you completed your pushups task."

# read file
# lineNumber=1
# while read -r line; do
  # echo "Line $lineNumber $line"
  # ((lineNumber++))
# done < eldenring.txt
# Infinite loop

# while true; do
  # echo "Are you scared of me?" 
# done
#
#
# Until Loop 

# until [[ $order == "coffee" ]]; do
  # echo "Would you like to order coffee or tea?"
  # read order
# done
# echo "Excellent choice, here is your coffee."
#
#
#
#for loop

# for number in 1 2 3 4 5 6 7 8 9 10
# other method to range this numbers list
# for number in range {1..10}
# do
  # echo "This is my $number number."
# done
#
# Checking the connectivity of a website using for loop
#
# for domain in twitter.com instagram.com google.com
# do
  # ping with quite try two times and wait for one second. If there is response will comback then it is true.
  # if ping -q -c 2 -w 1 $domain> /dev/null; then
    # echo "$domain is running and up."
  # else
    # echo "$domain is not running and down." 
  # fi
# done

# Read cities from "cities.txt" and get the weather report.

# for city in $(cat cities.txt)
# do
  # weather=$(curl -$ http://wttr.in/$city?format=3)
  # echo "The weather of the $city city is $weather."
# done
#
#break and continue

# echo "What do you want to check?"
# read target
# while true; do
  # if ping -q -c 2 -w 1 $target > /dev/null; then
    # echo "Hey, yo're up."
    # break 
  # else 
    # echo "$target is currently down... I will let you know if it is up."
  # fi
# sleep 2  
# done
# continue
#
echo "Welcome to the Hollywood Tower Hotel."
sleep 2
echo "Going up..."
sleep 1
for floor in {1..20}
do
  if [[ $floor == 13 ]]; then
    echo "I skipped the $floor floor."
    continue
  fi

  echo "You are in the $floor floor."
  sleep 1
done
