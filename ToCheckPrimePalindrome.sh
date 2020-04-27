3)Take a number from user and check if the number is a Prime then show
that its palindrome is also prime
a. Write function check if number is Prime
b. Write function to get the Palindrome.
c. Check if the Palindrome number is also prime

#!/bin/bash -x
function getPrime()
{
i=2
flag=0
local num=$1
	while test $i -le `expr $n / 2`
	do
	if test `expr $n % $i` -eq 0
	then
	flag=1
	fi
	i=`expr $i + 1`
	done
	if test $flag -eq 1
	then
	echo "The number is Not Prime"
	else
	echo "The number is Prime"
	fi
	number=$n
	reverse=0
	while [ $n -gt 0 ]
	do
	a=`expr $n % 10 `
	n=`expr $n / 10 `
	reverse=`expr $reverse \* 10 + $a`
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
    	echo "Number is palindrome"
	else
    	echo "Number is not palindrome"
	fi
      echo $num
}

echo "Enter a number:"
read n
result="$( getPrime $(($n)) )"
echo $result

