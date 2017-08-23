#!/bin/bash

n=$1
f=$2

#Will do Fibonacci function by default until otherwise specified.
if [ -z $2 ]; then
  f="fib"
fi

function Fibonacci {

if [ -z ${n} ]; then
  echo "A single integer is required"
  exit 1
elif [ ${n} -lt 0 ]; then
  echo "Integer may not be negetive"
  exit 1

fi

num1=0
num2=1


for (( i=0; ${i}<${n}; i++ ))

do
  output="${output} ${num1}"
  numT=$((num1+num2))
  num1=$num2
  num2=$numT
done

echo $output

}

case ${f} in
  "fib" )
    Fibonacci ;;
  "other" )
    Future ;;
  *)
    echo "No function provided" ;;
esac
 
exit 0
