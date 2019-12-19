#! /bin/bash +x 
read -p "Enter number"  number
prime=0
for (( count=2; count<$number; count++ ))
do
	echo $count
	if [ $(( $number%$count )) -eq 0 ]
	then	
		prime=1
	fi
done

if [ $prime -eq 0 ]
then
	echo $number "is prime"
else
	echo $number "is not prime"
fi
