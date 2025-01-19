: '
Create a file that contains the ROLL NUMBER, NAME, CITY of students of a class in sorted order with respect to Roll Number.
Now write a menu driven shell script that has the following options:
a. Display the contents of the whole file.
b. Display the information of a student with a specific Roll Number supplied by the User.
c. Delete the entry of a student from the file with a specific Roll Number supplied by User.
d. Add a new entry in the file.
e. Update an entry of a student with a specific Roll Number supplied by the User.
'

: '
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ cat>students.txt
101,John Doe,New York
102,Jane Smith,Los Angeles
103,Mike Brown,Chicago
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ cat students.txt
101,John Doe,New York
102,Jane Smith,Los Angeles
103,Mike Brown,Chicago
'
#!/bin/bash

FILE="students.txt"

# Ensure the file exists
if [[ ! -f $FILE ]]; then
    touch $FILE
fi

# Menu function
display_menu()
{
    echo
    echo "Choose an option:"
    echo "a. Display the contents of the whole file"
    echo "b. Display information of a student by Roll Number"
    echo "c. Delete an entry by Roll Number"
    echo "d. Add a new entry"
    echo "e. Update an entry by Roll Number"
    echo "q. Quit"
}

# Display contents of the file
display_contents()
{
    echo "Contents of the file:"
    cat "$FILE" | sort -t ',' -k1,1n
}

# Display a specific student's information
display_student()
{
    read -p "Enter Roll Number: " roll
    grep -w "^$roll" "$FILE" || echo "Student with Roll Number $roll not found."
}

# Delete a student's entry
delete_entry()
{
    read -p "Enter Roll Number to delete: " roll
    if grep -wq "^$roll" "$FILE"; then
        grep -wv "^$roll" "$FILE" > temp && mv temp "$FILE"
        echo "Entry deleted."
    else
        echo "Student with Roll Number $roll not found."
    fi
}

# Add a new entry
add_entry()
{
    read -p "Enter Roll Number: " roll
    if grep -wq "^$roll" "$FILE"; then
        echo "Student with Roll Number $roll already exists."
    else
        read -p "Enter Name: " name
        read -p "Enter City: " city
        echo "$roll,$name,$city" >> "$FILE"
        echo "Entry added."
        sort -t ',' -k1,1n -o "$FILE" "$FILE"
    fi
}

# Update an entry
update_entry()
{
    read -p "Enter Roll Number to update: " roll
    if grep -wq "^$roll" "$FILE"; then
        read -p "Enter New Name: " name
        read -p "Enter New City: " city
        grep -wv "^$roll" "$FILE" > temp && mv temp "$FILE"
        echo "$roll,$name,$city" >> "$FILE"
        echo "Entry updated."
        sort -t ',' -k1,1n -o "$FILE" "$FILE"
    else
        echo "Student with Roll Number $roll not found."
    fi
}

# Main loop
while true; do
    display_menu
    read -p "Enter your choice: " choice
    case $choice in
        a) display_contents ;;
        b) display_student ;;
        c) delete_entry ;;
        d) add_entry ;;
        e) update_entry ;;
        q) echo "Exiting."; break ;;
        *) echo "Invalid option. Try again." ;;
    esac
done

: '
Output:
------
Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: a
Contents of the file:
101,John Doe, New York
102,Jane Smith,Los Angeles
103,Mike Brown,Chicago

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: b
Enter Roll Number: 102
102,Jane Smith,Los Angeles

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: b
Enter Roll Number: 105
Student with Roll Number 105 not found.

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: d
Enter Roll Number: 106
Enter Name: Soumyadeep Adak
Enter City: Howrah
Entry added.

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: a
Contents of the file:
101,John Doe, New York
102,Jane Smith,Los Angeles
103,Mike Brown,Chicago
106,Soumyadeep Adak,Howrah

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: e
Enter Roll Number to update: 103
Enter New Name: Laursen Turbo
Enter New City: Kolkata
Entry updated.

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: a
Contents of the file:
101,John Doe, New York
102,Jane Smith,Los Angeles
103,Laursen Turbo,Kolkata
106,Soumyadeep Adak,Howrah

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: d
Enter Roll Number: 104
Enter Name: dfgdfg
Enter City: dfgdfg
Entry added.

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: a
Contents of the file:
101,John Doe, New York
102,Jane Smith,Los Angeles
103,Laursen Turbo,Kolkata
104,dfgdfg,dfgdfg
106,Soumyadeep Adak,Howrah

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: c
Enter Roll Number to delete: 104
Entry deleted.

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: a
Contents of the file:
101,John Doe, New York
102,Jane Smith,Los Angeles
103,Laursen Turbo,Kolkata
106,Soumyadeep Adak,Howrah

Choose an option:
a. Display the contents of the whole file
b. Display information of a student by Roll Number
c. Delete an entry by Roll Number
d. Add a new entry
e. Update an entry by Roll Number
q. Quit
Enter your choice: q
Exiting.
'
