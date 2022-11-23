#!/bin/bash

export PROJECT_ID=$(gcloud config get-value project)
export TOPIC_NAME="cloud-functions-topic"
export REGION=us-central1
export SERVICE_NAME=hello-pubsub-function
