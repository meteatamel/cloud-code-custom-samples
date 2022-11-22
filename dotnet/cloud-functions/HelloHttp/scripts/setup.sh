#!/bin/bash

echo "Enable required services"
set -v
gcloud services enable \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  cloudfunctions.googleapis.com \
  run.googleapis.com