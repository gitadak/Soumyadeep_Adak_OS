# Write a shell script to sort the given numbers in descending order using Bubble sort.
#!/bin/bash

# Function to take input
take_input()
{
    read -p "Enter the no. of elements in array: " n
    echo "Enter the elements:"
    i=0
    while [ $i -lt $n ]; do
        read x
        a[$i]=$x
        i=$((i+1))
    done
}

# Function to display the array
display_array() 
{
    echo "The array:"
    for element in "${a[@]}"; do
        echo -n "$element  "
    done
    echo
}

# Function to sort the array in descending order using bubble sort
sort_descending() 
{
    i=0
    while [ $i -lt $((n-1)) ]; do
        flag=0
        j=0
        while [ $j -lt $((n-1-i)) ]; do
            if [ ${a[$j]} -lt ${a[$((j+1))]} ]; then
                flag=1
                t=${a[$j]}
                a[$j]=${a[$((j+1))]}
                a[$((j+1))]=$t
            fi
            j=$((j+1))
        done
        if [ $flag -eq 0 ]; then
            break
        fi
        i=$((i+1))
    done
}

# Main script logic
take_input
echo "Original:"
display_array
sort_descending
echo "The sorted array in descending order:"
display_array


: '
Output:
------
Enter the no. of elements in array: 5
Enter the elements:
-9
4
-9
2
3
Original:
The array:
-9  4  -9  2  3
The sorted array in descending order:
The array:
4  3  2  -9  -9
'
