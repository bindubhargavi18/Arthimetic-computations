#!/bin/bash -x
declare -A results
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
echo $a,$b,$c
r1=$((a+b*c))
r2=$((a*b+c))
r3=$((c+a/b))
r4=$((a%b+c))
results[comp1]="$r1"
results[comp2]="$r2"
results[comp3]="$r3"
results[comp4]="$r4"
echo "All keys:" ${!results[@]}
echo "all results:" ${results[@]}
