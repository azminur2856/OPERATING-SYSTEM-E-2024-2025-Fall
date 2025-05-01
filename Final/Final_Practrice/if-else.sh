#!/bin/bash

a=50
b=101

if [[ $a -eq 5 || $b -eq 10 ]] 
then
echo "Hello World!"
elif [[ $a = 50 && $b -eq 101 ]]
then
echo "Good Luck!"
else
echo "Not Match!"
fi
