#!/bin/bash
#Write a shell script program to check whether a given number is prime or not

read -p "Enter the value : " num
i=2
flag=1
while [ $i -lt $num ]
do
    r=`expr $num % $i`
    if [ $r -eq 0 ]
    then
        flag=0
        break
    fi
i=`expr $i + 1`
done

if [ $flag -eq 1 ]
then 
    echo "$num is Prime"
else
    echo "$num is not prime"
fi
