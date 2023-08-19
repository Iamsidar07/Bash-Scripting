#!/bin/bash
listofwords=( I do not know who the hell you are )
words=$(cat appendingtext.txt)
for word in $words 
do
  legthofcharactersinword=$(echo -n $word | wc -c)
  echo "lengthofword is $legthofcharactersinword of word: $word"
done
