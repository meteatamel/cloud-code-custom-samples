#!/bin/bash

source $(dirname $0)/config.sh

echo "Triggering $SERVICE_NAME by uploading a file to $BUCKET_NAME"

echo "Hello from Storage" > random.txt
gsutil cp random.txt gs://${BUCKET_NAME}

echo "Read the logs"
gcloud functions logs read $SERVICE_NAME \
  --gen2 \
  --region $REGION --limit=100 --format "value(log)"