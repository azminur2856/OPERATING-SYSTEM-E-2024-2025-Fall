#!/bin/bash

echo "Hello AZMINUR RAHMAN!"

#Shell Variable
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

name=AZMINUR  #don't use space when assign value in variable
echo My name is $name
echo "My name is " $name
echo "This is "$name" Who did this!"
echo "Hello \"World\"" # it's use for printing Hello "World"

#User Input
read -p "Enter a number: " num1
read -sp "Enter a number hidden: " num2
echo ""
echo `expr 2 + 2` "," $(expr $num1 \* $num2)
mod1==$(expr 5 % 2)
mod2=`expr 6 % 2`
echo $mod1
echo $mod2


