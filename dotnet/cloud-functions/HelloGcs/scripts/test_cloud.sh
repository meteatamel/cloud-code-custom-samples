#!/bin/bash

source config.sh

echo "Trigger the function by uploading a file"
echo "Hello from Storage" > random.txt
gsutil cp random.txt gs://${BUCKET_NAME}

echo "Read the logs"
gcloud functions logs read $SERVICE_NAME \
    --gen2 \
    --region $REGION