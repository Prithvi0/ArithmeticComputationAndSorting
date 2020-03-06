#!/bin/bash -x
echo "Welcome to Arithmetic Computation and Sorting"

# Taking three inputs
read -p "Enter number a: " a
read -p "Enter number b: " b
read -p "Enter number c: " c

# Computing all Arithmetic Operations
Operation1=`expr "scale=2;$a+(($b*$c))" | bc`
Operation2=`expr "scale=2;(($a*$b))+$c" | bc`
Operation3=`expr "scale=2;$c+(($a/$b))" | bc`
Operation4=`expr "scale=2;(($a%$b))+$c" | bc`
