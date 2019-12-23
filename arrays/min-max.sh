#! /bin/bash -x  
declare -a array
for (( count=0; count < 10; count ++ ))
do
	random_no=99
	while [ $random_no -le 100 ]
		do
			random_no=$(( $RANDOM ))
			random_no=$(( $random_no % 1000 ))
		done	
	array[count]=$random_no

done
for (( i = 0; i < ${#array[@]}; i++ ))
do
	for (( j = $i; j < ${#array[@]}; j++ ))
	do
		if [ ${array[$i]} -gt ${array[$j]}  ]; then	
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "second lowest" ${array[1]}
echo "second highest" ${array[$(( ${#array[@]}-2 ))]}

