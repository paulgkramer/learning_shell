#!/bin/sh

#if divisible by 3 display fizz, if divisible
#by 5, display buzz, if none, display the number

for number in {1..100}; do
  output=""
  if ((number%3==0)); then
    output="Fizz"
  fi
  if ((number%5==0)); then
    output="${output}Buzz"
  fi
  if [ -z $output ]; then
    echo $number
  else
    echo $output
  fi

done
