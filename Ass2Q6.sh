# Write a shell script to find the maximum and minimum of sum given numbers
# Taking input of array
read -p "Enter the no. of elements in array: " n
echo "Enter the elements:"
i=0
while [ $i -lt $n ]
do
    read x
    a[$i]=$x
    i=$((i+1))
done

# Displaying the array
echo "The array:"
i=0
while [ $i -lt $n ]
do
    echo -n "${a[$i]}  "
    i=$((i+1))
done
echo

# Finding min and max
min=${a[0]}
max=${a[0]}
for (( i=1; i<n; i++ ))
do
	if test ${a[$i]} -lt $min; then
		min=${a[$i]}
	fi
        if test ${a[$i]} -gt $max; then
                max=${a[$i]}
	fi
done

# Displaying value of min and max
echo "Minimum = $min"
echo "Maximum = $max"


: '
Output:
------
Enter the no. of elements in array: 5
Enter the elements:
3
-9
5
-7
5
The array:
3  -9  5  -7  5
Minimum = -9
Maximum = 5
'

