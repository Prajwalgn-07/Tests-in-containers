#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: ./create_env.sh <groups you want to run on container 1>
                   <groups you want to run on container 2>"
    exit 1
fi

# remove the contents of allure-results directory
rm -rf allure-results/*

# Assign the arguments to variables
Replica1="mvn test $1"
Replica2="mvn test $2"

# Create the .env file
echo "Replica1=$Replica1" >> .env
echo "Replica2=$Replica2" >> .env

# Success message
echo "The .env file has been created successfully."

docker-compose up