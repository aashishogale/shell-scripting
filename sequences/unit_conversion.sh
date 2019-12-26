#! /bin/bash -x
read -p "enter your unit" unit
abc=$(( $unit*10 ))
echo `echo  "$abc/28"  | bc -l` 


