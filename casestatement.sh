#!/bin/bash
# {$1,,} means lowercase or uppercase, making case non-sensitive for the first positional argument. Ignore uppercase or lowercase aka positional expansion
#
#
command=$1
case ${command,,} in
  monu | administrator) 
  echo "Oh, you are the BOSS here. Welcome!"
  ;;
  help)
  echo "Just enter your username, duh!"
  ;;
  *) 
  echo "I don't know who the hell you are. You're not the BOSS of me!"
  ;;
esac
