#!/bin/bash

read -p "Enter array element by spaces: " -a array

function array_access()
{
array=("$@")

echo "All element of array is: ${array[@]}"

echo -n "All event index element in array: "
for (( i=0; i<${#array[@]}; i++ ))
do
if (( i % 2 == 0 ))
then
echo -n ${array[i]}" "
fi
done
echo
}

array_access ${array[@]}
