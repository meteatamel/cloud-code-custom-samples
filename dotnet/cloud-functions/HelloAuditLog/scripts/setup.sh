#!/bin/bash

source $(dirname $0)/config.sh

echo "Enable required services"
gcloud services enable \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  cloudfunctions.googleapis.com \
  eventarc.googleapis.com \
  run.googleapis.com

echo "Grant the default Compute Engine service account the eventarc.eventReceiver IAM role. This is needed for Eventarc's AuditLog trigger"
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member serviceAccount:$PROJECT_NUMBER-compute@developer.gserviceaccount.com \
  --role roles/eventarc.eventReceiver

echo "Note: You need to double check that AuditLogs are enabled for the service you're interested in listening events from."