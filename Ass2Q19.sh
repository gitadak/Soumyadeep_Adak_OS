: '
Write a shell script to print all the prime numbers between a range [le,ri].
It should consist a function is_prime().
'
#!/bin/bash

# Function to check if a number is prime
is_prime() 
{
    local num=$1
    if [ $num -lt 2 ]; then
        return 1 # Not a prime number
    fi
    for (( i=2; i*i<=num; i++ )); do
        if [ $((num % i)) -eq 0 ]; then
            return 1 # Not a prime number
        fi
    done
    return 0 # Prime number
}

# Main script to find and print primes in the range
read -p "Enter the lower bound (le): " le
read -p "Enter the upper bound (ri): " ri

if [ $le -gt $ri ]; then
    echo "Invalid range. Lower bound cannot be greater than upper bound."
    exit 1
fi

echo "Prime numbers between $le and $ri are:"
for (( n=le; n<=ri; n++ )); do
    if is_prime $n; then
        echo -n "$n "
    fi
done
echo


: '
Output:
------
Enter the lower bound (le): 2
Enter the upper bound (ri): 50
Prime numbers between 2 and 50 are:
2 3 5 7 11 13 17 19 23 29 31 37 41 43 47
'
