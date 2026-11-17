#!/bin/bash

echo "1. Pulling latest API update from GitHub..."
git pull origin main

echo "2. Stopping any running Mockoon instance from running..."
pkill -f mockoon-cli || true 
sleep 1

echo "3. Starting updated Mockoon server on port 3000..."
nohup mockoon-cli start --data ./API_Triage_Lab.json --port 3000 > mockoon_api.log 2>&1 &

echo "Done! Server is running in background."
