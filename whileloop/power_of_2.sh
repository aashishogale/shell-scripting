#! /bin/bash -x
read -p "enter count limit" count
solution=0
number=0
while [ $number -le $count ] && [ $solution -le 256 ]
do
	solution=$(( 2**$number ))
	echo $solution
	(( number ++ ))	 
done
