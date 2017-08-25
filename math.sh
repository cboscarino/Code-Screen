#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Must provide a function"
  exit 1
fi


function Fibonacci {
  n=$1
  if [ -z ${n} ]; then
    echo "A single integer is required"
    exit 1
  elif [ ${n} -lt 0 ] 2>/dev/null; then
    echo "Integer may not be negative"
    exit 1
  fi

  num1=1
  num2=1

  if [ ${n} -ne 0 ] 2>/dev/null; then
  output="[0"
  fi

  for (( i=1; ${i}<${n}; i++ ))
  do
    output="${output}, ${num1}"
    numT=$((num1+num2))
    num1=$num2
    num2=$numT
  done

  output="${output}]"
  echo $output
} #--End Fibonacci


function Future {
  echo "Future function not defined:  $*"
} #--End Future


f=$1
#case of valid function arguments
case ${f} in
  "fib" )
    Fibonacci ${2} 
    ;;
  "other" )
    Future $* 
    ;;
  *)
    echo "No valid function provided"
    exit 1
    ;;
esac

exit 0
