#!/bin/bash

read -p "Enter 1st number: " c
read -p "Enter 2nd number: " b

function add()
{
a=$1
b=$2
sum=$(bc<<<$a+$b)
echo Addition is $sum
}
add $c $b
add 5 8
