#!/bin/bash

number1=$1

fibonacy(){
    a=1
    b=0
    echo $b
    while [ $number1 -gt 0 ]
    do
        temp=$a
        a=$[$a+$b]
        b=$temp
        number1=$[$number1-1]
        echo $b
    done
}

case "$1" in
	-h|--help)
		echo "./fibonacci.sh number"
		exit 1
		;;
	*)
		fibonacy
		;;
esac
