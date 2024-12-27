#!/bin/bash

# Navigate to the application directory
cd ~/app

# Pull the latest code from the repository
git pull origin main

# Build and run the Docker container
docker build -t demo .
docker stop demo || true
docker rm demo || true
docker run -d -p 3001:3001 demo
