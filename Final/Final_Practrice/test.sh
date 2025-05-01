#!/bin/bash

function fibonacci()
{
n=$1
a=0
b=1
echo -n "Fibonacci series up to $n terms is: "
for (( i=0; i<n; i++ )); do
echo -n "$a "
temp=$((a + b))
a=$b
b=$temp
done
echo
}

fibonacci 5

function max_of_two()
{
x=$1
y=$2
if (( x > y ))
then
echo $x
else
echo $y
fi
}

function max_of_three()
{
x=$1
y=$2
z=$3
max_xy=$(max_of_two $x $y)
max_xyz=$(max_of_two $max_xy $z)
echo "Maximum of $x, $y, and $z is: $max_xyz"
}

max_of_three 11 12 13

function is_prime() {
n=$1
if (( n <= 1 ))
then
echo "$n is not a prime number."
return
fi
for (( i=2; i<=n; i++ ))
do
if (( i != n && n % i == 0 ))
then
echo "$n is not a prime number."
return
fi
done
echo "$n is a prime number."
}

is_prime 5

is_leap_year() {
year=$1
if (( year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ))
then
echo "$year is a leap year."
else
echo "$year is not a leap year."
fi
}

is_leap_year 2004



