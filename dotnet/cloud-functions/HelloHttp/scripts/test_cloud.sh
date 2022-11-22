#!/bin/bash

source config.sh

gcloud functions call $SERVICE_NAME \
  --gen2 \
  --region $REGION