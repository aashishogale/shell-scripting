#! /bin/bash -x
read -p "enter count limit" count
for (( number=0; number<count; number++ ))
do
	echo  $(( 2**$number )) 
done
