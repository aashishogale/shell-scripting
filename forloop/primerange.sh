#! /bin/bash  
read -p "Enter number"  lower
read -p "Enter number"  higher
for (( number=$lower; number<$higher; number++ ))
do
	prime=0
	for (( count=2; count<$number; count++ ))
	do
	
		if [ $(( $number%$count )) -eq 0 ]
		then	
			prime=1
		fi
	done
	if [ $prime -eq 0 ]
	then
   	echo $number 
	fi
done


