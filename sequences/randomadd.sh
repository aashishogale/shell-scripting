# !/bin/bash -x
number=$RANDOM
echo $(( (($number % 6) + 1) + (($number % 6) + 1) ))

