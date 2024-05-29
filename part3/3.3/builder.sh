#!/bin/sh

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <github_repo> <dockerhub_repo>"
    exit 1
fi

# Set the environment variables
GITHUB_REPO=$1
DOCKERHUB_REPO=$2

# Set the GitHub URL
GITHUB_URL="https://github.com/${GITHUB_REPO}.git"

# Set the repository name
REPO_NAME=$(basename -s .git $GITHUB_REPO)

# Clone the repository
echo "Cloning the repository..."
git clone $GITHUB_URL
cd $REPO_NAME

# Build the Docker image
echo "Building the Docker image..."
docker build -t $DOCKERHUB_REPO .

# Push the Docker image
echo "Pushing the Docker image..."
docker push $DOCKERHUB_REPO

# Clean up
cd ..
rm -rf $REPO_NAME

echo "Done."