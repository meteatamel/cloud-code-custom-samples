#!/bin/bash

source $(dirname $0)/config.sh

echo "Enable required services"
gcloud services enable \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  cloudfunctions.googleapis.com \
  eventarc.googleapis.com \
  run.googleapis.com

echo "Create a Pub/Sub topic: $TOPIC_NAME"
gcloud pubsub topics create ${TOPIC_NAME}