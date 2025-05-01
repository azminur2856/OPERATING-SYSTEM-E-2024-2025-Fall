#!/bin/bash

read -p "Enter number: " num1
read -p "Enter another number: " num2

echo "$num1 + $num2" | bc

result=$(bc<<<"$num1 * $num2")

echo $result
