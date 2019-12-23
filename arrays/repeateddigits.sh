#! /bin/bash -x
arraycount=0
declare -a array
for (( count=10; count<100; count++ ))
do
	
	number1=`echo "${count:0:1}"`
	number2=`echo "${count:1:2}"`
	if [ $number1 -eq $number2 ]
	then
		array[(( arraycount++ ))]=$count
	fi
done

echo "${array[@]}"
