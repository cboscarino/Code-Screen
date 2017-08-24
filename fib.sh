#!/bin/bash

n=$1 #--Integer Parameter
f=$2 #--Function Parameter

#Will do Fibonacci function by default until otherwise specified.
if [ -z $2 ]; then
  f="fib"
fi

function Fibonacci {

  if [ -z ${n} ]; then
    echo "A single integer is required"
    exit 1
  elif [ ${n} -lt 0 ] 2>/dev/null; then
    echo "Integer may not be negative"
    exit 1

  fi

  num1=1
  num2=1

  if [ ${n} -ne 0 ]; then
  output="0"
  fi

  for (( i=1; ${i}<${n}; i++ ))
  do
    output="${output}, ${num1}"
    numT=$((num1+num2))
    num1=$num2
    num2=$numT
  done

  echo $output

} #--End Fibonacci


case ${f} in
  "fib" )
    Fibonacci ;;
  "other" )
    Future ;;
  *)
    echo "No function provided" ;;
esac

exit 0
