# Write a shell script to delete an element from a specific position of an array

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

# Deletion of element
read -p "Enter the element position (1-based index): " pos
pos=$((pos-1))
for (( i=$pos+1; i<=n; i++ ))
do
	a[$((i-1))]=${a[$i]}
done

# Displaying the updated array
echo "The updated array:"
: '
i=0
while [ $i -lt $n ]
do
    echo -n "${a[$i]}  "
    i=$((i+1))
done
echo
'
echo "${a[*]}"
#echo "${a[@]}"

: '
Output:
------
Enter the no. of elements in array: 5
Enter the elements:
3
-9
5
4
9
The array:
3  -9  5  4  9
Enter the element position (1-based index): 2
The updated array:
3  5  4  9
'
