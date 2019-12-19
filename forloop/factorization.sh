#! /bin/bash  -x
read -p "enter the number" number
for (( i=2; i<=$number; i++ ));
do
	if  [ $((number%$i)) == 0 ]
	then
        echo $i
        number=$((number/$i))
  	fi
done 
