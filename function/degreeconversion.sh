#! /bin/bash -x
function  convertFtoC(){
degC=$(echo "scale=3; $1*(9/5)+32" | bc );
echo $degC
}

function  convertCtoF(){
degF=$(echo "scale=3; ($1–32)*5/9" | bc );
echo $degF
}

read -p "enter input"  input
read -p "enter choice a)F to C \n b)C to F" choice

case $choice in 
	"a")
		solution="$( convertFtoC $input )";;
	"b")
      solution="$( convertCtoF $input )";;

esac
echo "converted value" $solution
