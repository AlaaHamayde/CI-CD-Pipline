#!/bin/bash
repository_name="CI-CD-Pipline"
repository_url="git@github.com:AlaaHamayde/CI-CD-Pipline.git"
if [ -d "$repository_name" ]; then
    echo "Error: Repository directory '$repository_name' already exists."
    
fi
# Clone the repository
git clone "$repository_url"

# Check if the cloning was successful
if mycmd ; then
    echo "Repository cloned successfully."
    ./Pipeline.py
else
    echo "Error: Failed to clone the repository."
fi
