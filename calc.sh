#!/bin/bash
#Write a shell script program to create a menu driven calculator

while [ true ]
do
    echo "press 1 for Addition"
    echo "press 2 for Substraction"
    echo "press 3 for Multiplication"
    echo "press 4 for Division"
    echo "press 5 for Remainder"
    echo "press 6 for Square root"
    echo "press 7 Power"
    echo "press 0 to Exit"

    echo
    read -p "Select choice: " choice

    if [ $choice -ne 0 ]
    then    
        if [ $choice -ne 6 ]
        then
            echo -n "Enter num1: "
            read num1
            echo -n "Enter num2: "
            read num2
        else
            echo "Enter num: "
            read num
        fi
    fi
    case $choice in
        1)
        res=$(echo "scale=2;($num1 + $num2)" |bc)
        echo "The addition is : $res"
        ;;
        2)
        res=$(echo "scale=2;($num1 - $num2)" |bc)
        echo "The substraction is : $res"
        ;;
        3)
        res=$(echo "scale=2;($num1 * $num2)" |bc)
        echo "The multiplication is : $res"
        ;;
        4)
        res=$(echo "scale=2;($num1 / $num2)" |bc)
        echo "The division is : $res"
        ;;
        5)
        res=$(echo "scale=2;($num1 % $num2)" |bc)
        echo "The modulus is : $res"
        ;;
        6)
        res=$(echo "scale=2; sqrt($num)" |bc)
        echo "The Squareroot is : $res"
        ;;
        7)
        res=$(($num1 ** $num2))
        echo "The power  is : $res"
        ;;
        0)
        exit
        ;;
        *)
        echo "No matching choice found"
        ;;
    esac
    echo
done

