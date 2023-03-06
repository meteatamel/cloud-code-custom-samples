#!/bin/bash

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

source $(dirname $0)/config.sh

if [ "$SERVICE_TYPE" = "functions" ]
then
  echo "Deploy $SERVICE_NAME to $REGION"
  gcloud functions deploy $SERVICE_NAME \
    --entry-point $ENTRY_POINT \
    --gen2 \
    --region $REGION \
    --runtime $RUNTIME \
    --source .. \
    --trigger-topic ${TOPIC_NAME}
elif [ "$SERVICE_TYPE" = "run" ]
then
  echo "Deploy $SERVICE_NAME to $REGION"
  gcloud run deploy $SERVICE_NAME \
    --no-allow-unauthenticated \
    --region $REGION \
    --source ..

  echo "Create Eventarc trigger for $SERVICE_NAME"
  gcloud eventarc triggers create trigger-$SERVICE_NAME \
    --destination-run-service=$SERVICE_NAME \
    --destination-run-region=$REGION \
    --event-filters="type=google.cloud.pubsub.topic.v1.messagePublished" \
    --location=$REGION \
    --service-account=$PROJECT_NUMBER-compute@developer.gserviceaccount.com \
    --transport-topic=projects/$PROJECT_ID/topics/$TOPIC_NAME
fi
