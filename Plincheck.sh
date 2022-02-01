#!/bin/bash
#write a shell script to input a number and find reverse and check whether it is palindrome or not

read -p "Enter the number: " num

num1=$num
rev=0

while [ $num -gt 0 ]
do
    rem=`expr $num % 10`
    ((rev = rev*10 + rem))
    ((num /=10))
done

echo "Reverse is: $rev"

if [ $num1 -eq $rev ]
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi