#! /bin/bash -x

sum=0;
read -p "Enter the number" count
for (( number=1; number<$count; number++ ))
do
	harmonic=$(echo "scale=3; 1/$number " | bc );
	sum=$(echo "scale=3; $sum+$harmonic " | bc );
	 
done
echo $sum
