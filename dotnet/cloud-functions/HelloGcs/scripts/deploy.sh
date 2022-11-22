#!/bin/bash

source config.sh

gcloud functions deploy $SERVICE_NAME \
  --allow-unauthenticated \
  --entry-point HelloGcs.Function \
  --gen2 \
  --region us-central1 \
  --runtime dotnet6 \
  --trigger-event google.storage.object.finalize \
  --trigger-resource $BUCKET_NAME