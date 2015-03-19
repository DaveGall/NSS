#!/bin/bash
# This is a basic bash script.
dave="Good Morning"
gall="Sunshine"
a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
d=2
e=$((d+2))
echo "Variables"
echo "My name equals: $dave $gall."
echo "Math"
echo $e
((e++))
echo $e
((e--))
echo $e
((e+=5))
echo $e
((e*=3))
echo $e
((e/=3))
echo $e
((e-=5))
echo $e
echo "The ping was $a."
echo "Expressions"
[[ "cat" == "cat" ]]
echo $?
[[ "cat" = "dog" ]]
echo $?
[[ 20 -gt 100 ]]
echo $?
echo "Null or Not Null"
n=""
nn="cat"
[[ -z $n && -n $nn ]]
echo $?
echo "Coloring Text"
flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"
echo -e $flashred"ERROR: "$none$red"Something went wrong."$none
echo "Date and printf"
today=$(date +"%d-%m-%Y")
time=$(date +"%H-%M-%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"
echo "Arrays in Bash"
array1=()
array2=("apple" "banana" "cherry")
echo ${array2[2]}
array2[5]="kiwi"
array2+=("mango")
echo ${array2[@]}
echo ${array2[@]: -1}
echo "Working with if statements."
num=5
if [ $num -gt 4 ]; then
	echo $num is greater than 4!
else
	echo $num is not greater than 4!
fi
