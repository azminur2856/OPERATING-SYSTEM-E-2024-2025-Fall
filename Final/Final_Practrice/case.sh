#!/bin/bash

read -p "A number between (1-3): " num

case $num in
1)
echo "You choose 1"
;;
2)
echo "You choose 2"
;;
3)
echo "You choose 3"
;;
*)
echo "Wrong option!"
;;
esac
