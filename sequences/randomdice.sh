# !/bin/bash -x
number=$RANDOM
echo $(( ($number % 6) + 1 ))

