#!/bin/bash

#Write a shell script program to find the factorial of a given input integer

read -p "Enter the number : " num 

fact=1
i=1

while [ $i -le $num ]
do
    fact=$(($fact * $i))
    ((i += 1))
done
echo "factorial of the number $num is: " $fact