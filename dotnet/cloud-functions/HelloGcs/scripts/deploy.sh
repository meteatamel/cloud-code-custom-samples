#!/bin/bash

source $(dirname $0)/config.sh

echo "Deploy $SERVICE_NAME to $REGION"
gcloud functions deploy $SERVICE_NAME \
  --entry-point HelloGcs.Function \
  --gen2 \
  --region $REGION \
  --runtime dotnet6 \
  --source .. \
  --trigger-event google.storage.object.finalize \
  --trigger-resource $BUCKET_NAME