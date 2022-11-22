#!/bin/bash

source config.sh

gcloud functions deploy $SERVICE_NAME \
  --allow-unauthenticated \
  --entry-point HelloHttp.Function \
  --gen2 \
  --region $REGION \
  --runtime dotnet6 \
  --trigger-http