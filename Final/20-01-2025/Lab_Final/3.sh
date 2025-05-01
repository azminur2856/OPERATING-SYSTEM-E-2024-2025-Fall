#!/bin/bash

read -p "Enter a year: " year

if [[ "$year" =~ ^[0-9]+$ ]]; then
    if ((year % 4 == 0)) && ((year % 100 != 0 || year % 400 == 0)) && ((year % 2 == 0)); then
        echo "$year is a leap year!"
    else
        echo "Sorry $year is not a leap year."
    fi
else
    echo "Invalid input! Please enter a valid positive integer for the year."
fi

