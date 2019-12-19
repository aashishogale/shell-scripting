#! /bin/bash -x
read -p "enter number" a
read -p "enter number" b
read -p "enter number" c
read -p "enter number" d
read -p "enter number" e

if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ] 
then
	echo $a
else
	if [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]
	then
		echo $b
	else
		if [ $c -gt $d ] && [$c -gt $e ]
		then
			echo $c
		else
			if [ $d -gt $e ]
			then 
				echo $d
			else
				echo $e
			fi
		fi
	fi
fi 

		
	
	
