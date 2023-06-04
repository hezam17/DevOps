#!/bin/bash

# Get the current directory path
current_directory=$(pwd)

# Prompt the user to enter the root directory name
read -p "Enter the root directory name: " root_directory_name

# Set the root directory path
root_directory="${current_directory}/${root_directory_name}"

# Create the log file path
log_file="${root_directory}/script.log"

# Create the log file directory if it doesn't exist
mkdir -p "$(dirname "${log_file}")"

# Create the log file and redirect stdout to both console and the log file
exec > >(tee -a "${log_file}") 2>&1

# Retrieve a list of all users on the system
users=($(wmic useraccount get name | awk 'NR>1' | tr -d '\r'))

# Iterate over each user and create a folder in the root directory
for user in "${users[@]}"; do
    user_folder="${root_directory}/${user}"
    mkdir -p "$user_folder"
    chmod 755 "$user_folder"

    # Check if the user exists before setting ownership
    if net user "$user" >/dev/null 2>&1; then
        chown "$user" "$user_folder"
        echo "Created folder for user: $user"
    else
        echo "User $user does not exist. Skipping folder creation."
    fi
done

echo "Script execution completed. Please check the log file: $log_file"
