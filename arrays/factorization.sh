#! /bin/bash -x
declare -a  array
read -p "enter the number" number
arraycount=0
for (( i=2; i<=$number; i++ ));
do
	while [ $(( $number%$i )) -eq 0 ]
	do
        	array[(( arraycount++ ))]=$i
        	number=$(( $number/$i ))
  	done
	#i=$(( $i*$i ))
done 
echo "${array[@]}"
