#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: ./create_env.sh <command1> <command2>"
    exit 1
fi

# Assign the arguments to variables
Replica1="$1"
Replica2="$2"

# Create the .env file
echo "Replica1=$Replica1" > .env
echo "Replica2=$Replica2" >> .env

# Success message
echo "The .env file has been created successfully."

docker-compose up