#!/bin/bash

source $(dirname $0)/config.sh

echo "Triggering $SERVICE_NAME by sending a message to topic $TOPIC_NAME"

gcloud pubsub topics publish ${TOPIC_NAME} --message="Mete Atamel"

echo "Read the logs"
gcloud functions logs read $SERVICE_NAME \
  --gen2 \
  --region $REGION --limit=100 --format "value(log)"