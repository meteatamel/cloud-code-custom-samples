#!/bin/bash

source $(dirname $0)/config.sh

echo "Deploy $SERVICE_NAME to $REGION"
gcloud functions deploy $SERVICE_NAME \
  --entry-point HelloAuditLog.Function \
  --gen2 \
  --region $REGION \
  --runtime dotnet6 \
  --source .. \
  --trigger-event-filters="type=google.cloud.audit.log.v1.written,serviceName=bigquery.googleapis.com,methodName=jobservice.jobcompleted"