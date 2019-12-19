#! /bin/bash -x
reverse=0
function  checkPalindrome(){
temp=$1
while [ $temp -ne 0 ]
do
    reverse=$(( $reverse* 10 ));
    reverse=$(( $reverse+$temp%10 ));
    temp=$(( $temp/10 ));
done
echo $reverse

}

function primeno(){
prime=0
for (( count=2; count<$number; count++ ))
do
        if [ $(( $number%$count )) -eq 0 ]
        then    
                prime=1
        fi
done

if [ $prime -eq 0 ]
then
        echo "prime"
else
        echo "not prime"
fi

}

read -p "enter number" number
read -p  "select 1 for prime 2 for palindrome 3 for palindrome and prime"  choice
case $choice in
		1)
		prime="$( primeno $number )"
		echo $prime;;
		2)
		palindrome="$( checkPalindrome $number )"
		echo $palindrome;;
		3)
		prime="$( primeno $( checkPalindrome number ) )"  
		echo $prime
esac

#if [ $number -eq  "$( reverseNumber $number )" ]
#then
#	echo "it is a palindrome"
#else
#	echo "it is not a palindrome"
#fi

