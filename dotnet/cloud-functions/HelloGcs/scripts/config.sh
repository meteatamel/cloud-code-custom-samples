#!/bin/bash

export PROJECT_ID=$(gcloud config get-value project)
export BUCKET_NAME="cloud-functions-bucket-${PROJECT_ID}"
export REGION=us-central1
export SERVICE_NAME=hello-gcs-function
