#!/bin/bash

read -p "Enter your name By While Loop: " name

count=1
while [ $count -le 10 ]; do
    echo "$name"
    ((count++))
done

echo "----------------------------------------"

read -p "Enter your name By For Loop: " name

for ((i = 1; i <= 10; i++)); do
    echo "$name"
done

echo "----------------------------------------"

read -p "Enter your name By Select Loop: " name

select option in "$name"; do
    for ((i = 1; i <= 10; i++)); do
        echo "$option"
    done
    break
done

echo "----------------------------------------"

read -p "Enter your name By Until Loop: " name

count=1
until [ $count -gt 10 ]; do
    echo "$name"
    ((count++))
done


