#!/bin/bash 
#echo "You Died."
#echo "Hey, Do you like Coffee?, (y/n)"
#read coffee 
#if [[ $coffee == "y" ]]; then
#  echo "You are awesome."
#else 
#  echo "Leave right now!!!"
#fi
echo "Welcome tarnished. Please choose your starting class: 
1-Samurai
2-Prisoner
3-Prophet"
# store in the class variable 
read class
case "$class" in
  1) 
    hp=10
    attack=11
    magic=10
  ;;
  2) 
    hp=12
    attack=11
    magic=9
  ;;
  3) 
    hp=9
    attack=8
    magic=8
  ;;
esac
echo "You have chooen $class class. 
HP=$hp
ATTACK=$attack
MAGIC=$magic"
echo "Your first best approaches. Prepare to battle. Pick a number, (0/1)"
read tarnished
beast=$(($RANDOM % 2))
if [[ $beast == $tarnished ]]; then
  echo "Beast VANQUISHED!!! Congrats fellow tarnished."
else 
  echo "You Died."
fi

sleep 2
echo "Boss Battle!!! Get scared. It's Margit. Pick a number between 0-9, (0-9)"
read tarnished
margit=$(($RANDOM % 10))
if [[ $margit == $tarnished ]]; then
  echo "Beast VANQUISHED!!! Congrats fellow tarnished."
else
  echo "You Died."  
fi
