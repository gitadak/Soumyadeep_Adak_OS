: '
Write a shell script to create write a shell script to create two infinite processes in background
and then prematurely terminate each of these infinite processes
'
#!/bin/sh

# Function to create an infinite process
infinite_process()
{
    while true; do
        echo "Process $1 is running..."
        sleep 1
    done
}

# Create two infinite processes in the background
infinite_process 1 &
PID1=$!  # Capture the process ID of the first process
echo "Started Process 1 with PID: $PID1"

infinite_process 2 &
PID2=$!  # Capture the process ID of the second process
echo "Started Process 2 with PID: $PID2"

# Wait for a few seconds before terminating
echo "Let the processes run for 5 seconds..."
sleep 5

# Terminate the processes
echo "Terminating Process 1 with PID: $PID1"
kill $PID1

echo "Terminating Process 2 with PID: $PID2"
kill $PID2

# Confirm termination
echo "Both processes terminated."

: '
Output:
------
Started Process 1 with PID: 30018
Process 1 is running...
Started Process 2 with PID: 30019
Let the processes run for 5 seconds...
Process 2 is running...
Process 1 is running...
Process 2 is running...
Process 1 is running...
Process 2 is running...
Process 1 is running...
Process 2 is running...
Process 1 is running...
Process 2 is running...
Terminating Process 1 with PID: 30018
Terminating Process 2 with PID: 30019
Both processes terminated.
'
