#!/bin/bash

echo while 
a=1

while [ $a -le 10 ]
do
echo -n $a" "
((a++))
done
echo

echo for

for (( i=0; i<=10; i++ ))
do
echo -n $i" "
done
echo

echo until

u=10
until [[ $u > 20 ]]
do
echo -n $u" "
((u++))
done
echo

echo break

for (( i=0; i<10; i++ ))
do
if [ $i -gt 5 ]
then
break
fi
echo -n $i" "
done
echo

echo continue

for (( i=100; i<110; i++ ))
do
if [ $i -eq 105 ]
then
continue
fi
echo -n $i" "
done
echo


echo select

select option in 1 2 3
do
case $option in
1)
echo "1"
;;
2)
echo "2"
;;
3)
echo "3"
;;
*)
echo "Invalid!"
;;
esac
done
