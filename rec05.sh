#!/bin/bash

curve() {
	incr=$1
	shift

	arr=("$@")

	index=0

	for i in "${arr[@]}"; do
		let "grades[index]+=$incr"
		let "index++"
	done 
}

if [[ $# -eq 1 ]]
then 
	for i in {1..5}; do
		read -p "Enter QUIZ #$i: " grades[i-1]
	done

	curve $1 ${grades[@]}
	echo "Curved Grades:"

	for (( j=0 ; $j<${#grades[*]} ; j=$j+1 ))
	do
		echo "grades[$j] = ${grades[j]}"
	done
else
	echo "usage: ./rec05.sh curve amount"
fi


