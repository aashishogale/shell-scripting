#! /bin/bash -x
reverse=0
function  reverseNumber(){
temp=$1
while [ $temp -ne 0 ]
do
    reverse=$(( $reverse* 10 ));
    reverse=$(( $reverse+$temp%10 ));
    temp=$(( $temp/10 ));
done
	echo $reverse
}
read -p  "enter number" number

if [ $number -eq  "$( reverseNumber $number )" ]
then
	echo "it is a palindrome"
else
	echo "it is not a palindrome"
fi

