#Write a shell script to sort some given numbers in descending order

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

# Sorting in descending order -- BUBBLE SORT
i=0
while [ $i -lt $((n-1)) ]
do
    flag=0
    j=0
    while [ $j -lt $((n-1-i)) ]
    do
        if [ ${a[$j]} -lt ${a[$((j+1))]} ]
        then
            flag=1
            t=${a[$j]}
            a[$j]=${a[$((j+1))]}
            a[$((j+1))]=$t
        fi
        j=$((j+1))
    done
    if [ $flag -eq 0 ]
    then
        break
    fi
    i=$((i+1))
done

# Displaying the sorted array
echo "The sorted array in descending order:"
i=0
while [ $i -lt $n ]
do
    echo -n "${a[$i]}  "
    i=$((i+1))
done
echo
#echo "${a[*]}"
#echo "${a[@]}"


: '
Output:
------
Enter the no. of elements in array: 5
Enter the elements:
-9
5
-7
3
0
The array:
-9  5  -7  3  0
The sorted array in descending order:
5  3  0  -7  -9
'
