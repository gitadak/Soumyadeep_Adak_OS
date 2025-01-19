: '
Write a shell script to implement Bubble Sort.
Print the contents of the sorted array without using any loop.
'

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

# Sorting in ascending order -- BUBBLE SORT
i=0
while [ $i -lt $((n-1)) ]
do
    flag=0
    j=0
    while [ $j -lt $((n-1-i)) ]
    do
        if [ ${a[$j]} -gt ${a[$((j+1))]} ]
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
echo "The sorted array in ascending order:"
echo "${a[*]}"  #Without using loop
#echo "${a[@]}"  #Alternative method

: '
Output:
------
Enter the no. of elements in array: 5
Enter the elements:
3
6
-9
4
-9
The array:
3  6  -9  4  -9
The sorted array in ascending order:
-9 -9 3 4 6
'
