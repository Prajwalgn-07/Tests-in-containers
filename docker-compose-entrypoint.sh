#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: ./create_env.sh <groups you want to run on container 1>
                   <groups you want to run on container 2>"
    exit 1
fi

# Assign the arguments to variables
Container1="mvn test $1"
Container2="mvn test $2"

# Create the .env file
echo "Container1=$Container1" >> .env
echo "Container2=$Container2" >> .env

# Success message
echo "The .env file has been created successfully."

docker-compose up -d