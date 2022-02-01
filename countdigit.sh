#!/bin/bash
#Write a shell script to input and find sum of digits and count the total number of digits

read -p "Enter the number: " num

sum=0
count=0
while [ $num -gt 0 ]
do
    rem=`expr $num % 10`
    sum=`expr $sum + $rem`
    ((num /=10))
    count=`expr $count + 1`
done
echo "The sum is : $sum" 
echo "The count is :  $count"