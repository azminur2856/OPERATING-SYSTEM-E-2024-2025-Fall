#!/bin/bash
read -p "Enter file name with extention: " filename

if [ -f $filename ]
then
echo "$filename Found!"
else
echo "$filename Not found!"
fi
