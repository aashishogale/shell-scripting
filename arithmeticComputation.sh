#!/bin/bash -x

read -p "Enter the first input: " a
read -p "Enter the second input: " b
read -p "Enter the third input: " c


operation1=$(($a+$b*$c))
operation2=$(($a*$b+$c))
echo "first operation" $operation1
echo "second operation" $operation
