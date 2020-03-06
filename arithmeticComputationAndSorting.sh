#!/bin/bash -x
echo "Welcome to Arithmetic Computation and Sorting"
# Dictionary declaration
declare -A dict

# Taking three inputs
read -p "Enter numbers a, b and c: " a b c

# Function to store all the Arithmetic computations in a dictionary
count=0
function ArithmeticComputations () {
argument=$1
dict[$((count++))]=$argument
}

# Calling all Arithmetic Operations in a function
ArithmeticComputations `expr "scale=2;$a+(($b*$c))" | bc`
ArithmeticComputations `expr "scale=2;(($a*$b))+$c" | bc`
ArithmeticComputations `expr "scale=2;$c+(($a/$b))" | bc`
ArithmeticComputations `expr "scale=2;(($a%$b))+$c" | bc`

# Read the values from the dictionary into an array
for array in ${!dict[@]}
do
	arr[$array]=${dict[$array]}
done
dictionaryValuesInArray=${arr[@]}

# Function to get results in descending and ascending order
function descendingAscendingOrder () {
	for value in $@
	do
		echo $value
	done | sort -r
}
descendingAscendingOrder $dictionaryValuesInArray		# Descending values
descendingAscendingOrder $dictionaryValuesInArray | sort -n	# Ascending values

