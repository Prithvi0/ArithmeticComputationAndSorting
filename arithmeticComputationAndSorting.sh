#!/bin/bash -x
echo "Welcome to Arithmetic Computation and Sorting"

# Taking three inputs
read -p "Enter number a: " a
read -p "Enter number b: " b
read -p "Enter number c: " c

# Computing first and second Arithmetic Computation
Operation1=`expr "scale=2;$a+(($b*$c))" | bc`
Operation2=`expr "scale=2;(($a*$b))+$c" | bc`
