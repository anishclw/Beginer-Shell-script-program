#!/bin/bash
#Write a shell script to find sum,average and grade of 4 subjects

read -p "Enter marks for subject 1 : " marks1
read -p "Enter marks for subject 2 : " marks2
read -p "Enter marks for subject 3 : " marks3
read -p "Enter marks for subject 4 : " marks4
echo
sum=$(($marks1 + $marks2 + $marks3 + $marks4))
mean=$(echo "scale=2;($sum / 4)" |bc)
((percent = $sum / 4))
echo "Sum : $sum"
echo "Average : $mean"

if [ $percent -ge 70 ]
then
echo "Grade A"
elif [ $percent -gt 60 ] && [$percent -lt 70]
then
echo "Grade B"
else
echo "Grade C"
fi

