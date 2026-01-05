#!/bin/bash

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root (use sudo)"
  exit
fi

INPUT_FILE="students.csv"
STUDENT_GROUP="students"

# Create the student group if it doesn't exist
groupadd -f $STUDENT_GROUP

while IFS=, read -r username password
do
    # Skip empty lines or malformed lines
    if [[ -z "$username" || -z "$password" ]]; then
        continue
    fi

    # Check if user already exists
    if id "$username" &>/dev/null; then
        echo "User $username already exists, skipping..."
    else
        # Create user with a home directory and add to student group
        useradd -m -g $STUDENT_GROUP -s /bin/bash "$username"
        
        # Set the password
        echo "$username:$password" | chpasswd
        
        echo "Created account for: $username"
    fi
done < "$INPUT_FILE"

echo "-----------------------------------"
echo "Account creation complete."
