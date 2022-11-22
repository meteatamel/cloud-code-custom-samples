#!/bin/bash

source $(dirname $0)/config.sh

echo "Triggering $SERVICE_NAME with HTTP"
gcloud functions call $SERVICE_NAME \
  --gen2 \
  --region $REGION