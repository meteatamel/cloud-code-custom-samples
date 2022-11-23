#!/bin/bash

source $(dirname $0)/config.sh

echo "Deploy $SERVICE_NAME to $REGION"
gcloud functions deploy $SERVICE_NAME \
  --allow-unauthenticated \
  --entry-point HelloPubSub.Function \
  --gen2 \
  --region $REGION \
  --runtime dotnet6 \
  --source .. \
  --trigger-topic ${TOPIC_NAME}