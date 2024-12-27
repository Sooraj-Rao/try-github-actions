#!/bin/bash

# Define the app directory path
APP_DIR="/home/ubuntu/nextjs"

# Stop any existing containers
docker stop demo || true
docker rm demo || true

# Check if the repository is already cloned
if [ -d "$APP_DIR" ]; then
    echo "Repository already exists. Pulling the latest changes..."
    cd $APP_DIR
    git pull origin main
else
    echo "Repository not found. Cloning the repository..."
    git clone https://github.com/Sooraj-Rao/demo-vite-react.git $APP_DIR
    cd $APP_DIR
fi

# Build the Docker image
docker build -t demo .

# Run the Docker container
docker run -d --name demo -p 3001:3001 demo

# Optionally, you can check the logs to ensure everything is running properly
docker logs -f demo
