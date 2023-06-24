#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 3 ]; then
    echo "Usage: ./create_env.sh <maven command to run the test in container 1>
                   <maven command to run the test in container 2>
                   <path to the volume to be mounted>"
    exit 1
fi

# Assign the arguments to variables
Replica1="$1"
Replica2="$2"
VolumePath="$3"

# Create the .env file
echo "Replica1=$Replica1" > .env
echo "Replica2=$Replica2" >> .env

# Success message
echo "The .env file has been created successfully."

# Modify the Docker Compose file to include the variable directly
export DOCKER_VOLUME_PATH="$VolumePath"

docker-compose up -d