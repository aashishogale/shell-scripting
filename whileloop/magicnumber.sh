#! /bin/bash -x
#read -p "is your number between 1 and 100"  answer
upper_limit=100
lower_limit=1
number=$(( $upper_limit/2 )) 

while [ $number -gt $lower_limit ] && [ $number -lt $upper_limit ] 
do
	#number=$(( $number/2 ))
	read -p "is your number less than $number "  answer
	if [ "$answer" == "yes" ]
	then
		upper_limit=$number
		#upper_limit=$(( $upper_limit/2 ))
		#number=$(( $upper_limit/2  ))
		echo "yes"
		#lower_limit=$(( $number/2 ))
	else
		lower_limit=$number
		#lower_limit=$lower_limit
		#upper_limit=$temp_upper_limit
		#number=$((  ($upper_limit+$lower_limit)/2 ))
	fi	
	number=$(( ($upper_limit+$lower_limit)/2 ))
	echo $number
	echo $lower_limit
	echo $upper_limit
done
echo  "your number is"  $number
