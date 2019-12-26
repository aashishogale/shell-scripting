#! /bin/bash -x
heads=0
tails=0
while [ $heads -lt 11 ] || [ $tails -lt 11 ]
do
	value=$(( $RANDOM % 2 ))
	if [ $value -eq 0 ]
	then
		heads=$(( $heads + 1 ))
	else
		tails=$(( $tails + 1 ))
	fi
done	
echo $heads
echo $tails

