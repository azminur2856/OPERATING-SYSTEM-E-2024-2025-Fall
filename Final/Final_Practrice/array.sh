#!/bin/bash

os=("linux" "windows" "mac")

echo ${os[2]}
echo ${#os[@]}
echo ${os[@]}
unset os[2]
echo ${os[@]}

echo -n "Input Array element by space: "
read -a array
echo ${#array[@]}
echo ${array[@]}
unset array[0]
echo ${array[@]}
