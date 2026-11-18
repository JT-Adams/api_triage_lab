#!/bin/bash

REMOTE_HOST="ubuntu@api-server.local"
REMOTE_LOG="~/api_triage_lab/mockoon_api.log"
TIMESTAMP=$(date +"%Y-%m-%d_%H%M%S")
LOCAL_LOG="mockoon_api_${TIMESTAMP}.log"

echo "Pulling latest API logs from Ubuntu VM..."
scp $REMOTE_HOST:$REMOTE_LOG ./$LOCAL_LOG
echo "Done! Saved locally as $LOCAL_LOG"
