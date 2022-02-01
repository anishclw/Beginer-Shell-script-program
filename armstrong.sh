#!/bin/bash
#write a shell script program to heck whether a input number is Armstring or not

read -p "Enter the number: " num

num1=$num
newrev=0

while [ $num -gt 0 ]
do
    rem=`expr $num % 10`
    ((newrev += rem ** 3))
    ((num /=10))
done

if [ $num1 -eq $newrev ]
then
    echo "Armstrong Number"
else
    echo "Not Armstrong number"
fi