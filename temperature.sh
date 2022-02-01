#!/bin/bash
#Write a shell script program to find temperature from 90 to 110 in Fahrenheit to celcius and vice versa
echo "1.Convert Celcius temperature to Fahrenheit"
echo "2.Convert Fahrenheit temperature to Celcius"
echo -n "Select your choice(1-2) : "
read choice

if [ $choice -eq 1 ]
then
    i=90
    while [ $i -le 110 ]
    do
        celcius=$(echo "scale=2;((9/5) * $i) + 32" |bc)
        echo "The temperature from $i celcius to farenheit is: $celcius"
    i=`expr $i + 1`
    done
elif [ $choice -eq 2 ]
then
    j=90
    while [ $j -le 110 ]
    do
        farh=$(echo "scale=2;(5/9)*($j-32)" |bc)
        echo "The temperature from farenheit to celcius is: $farh"
    j=`expr $j + 1`
    done
else
    echo "Please select valid choice"
    exit
fi