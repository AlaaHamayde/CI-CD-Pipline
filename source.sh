#!/bin/bash
repository_name="CI-CD-Pipeline"
if [ -d "$repository_name" ]; then
    echo "Error: Repository directory '$repository_name' already exists."
    exit 1
fi

# Clone the repository
git clone "$repository_url"

# Check if the cloning was successful
if [ $? -eq 0 ]; then
    echo "Repository cloned successfully."
else
    echo "Error: Failed to clone the repository."
fi
