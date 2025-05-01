#!/bin/bash

read -p "Enter the number of terms: " num

if [[ "$num" =~ ^[0-9]+$ ]]; then
    a=0
    b=1
    
    echo "The Fibonacci series up to $num terms is:"
    for ((i = 0; i < num; i++)); do
        echo -n "$a "
        fib=$((a + b))
        a=$b
        b=$fib
    done
    echo
else
    echo "Invalid input. Please enter a valid positive integer."
fi

