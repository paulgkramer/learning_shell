#!/bin/bash

function IsDivisibleBy {
  return $(($1%$2))
}


function fizzOrBuzz {
  output=""
  IsDivisibleBy $1 3 && output="Fizz"
  IsDivisibleBy $1 5 && output="${output}Buzz"

  if [ -z $output ]; then
    echo $number
  else
    echo $output
  fi
}

for number in {1..100}; do
  echo "-`fizzOrBuzz $number`"
done
