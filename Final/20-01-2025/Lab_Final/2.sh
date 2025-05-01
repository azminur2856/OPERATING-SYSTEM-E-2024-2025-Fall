#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

echo "Choose an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "The result of addition is: $((num1 + num2))"
        ;;
    2)
        echo "The result of subtraction is: $((num1 - num2))"
        ;;
    3)
        echo "The result of multiplication is: $((num1 * num2))"
        ;;
    4)
        if [ $num2 -ncleare 0 ]; then
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "The result of division is: $result"
        else
            echo "Division by zero is not allowed."
        fi
        ;;
    *)
        echo "Invalid choice. Please choose a valid operation."
        ;;
esac

