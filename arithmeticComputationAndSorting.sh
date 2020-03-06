#!/bin/bash -x
declare -A dict

echo "Welcome to Arithmetic Computation and Sorting"

# Taking three inputs
read -p "Enter numbers a, b and c: " a b c

count=0
# Function to store all the Arithmetic computations in a dictionary
function ArithmeticComputations () {
argument=$1
dict[$((count++))]=$argument
}

# Calling all Arithmetic Operations in a function
ArithmeticComputations `expr "scale=2;$a+(($b*$c))" | bc`
ArithmeticComputations `expr "scale=2;(($a*$b))+$c" | bc`
ArithmeticComputations `expr "scale=2;$c+(($a/$b))" | bc`
ArithmeticComputations `expr "scale=2;(($a%$b))+$c" | bc`
