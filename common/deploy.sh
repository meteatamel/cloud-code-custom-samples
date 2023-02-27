#!/bin/bash

# Copyright 2022 Google LLC
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

if [ "$SERVICE_TYPE" = "cloud-functions" ]
then
  echo "Deploy $SERVICE_NAME to $REGION"
  gcloud functions deploy $SERVICE_NAME \
    --allow-unauthenticated \
    --entry-point $FUNCTION_NAME \
    --gen2 \
    --region $REGION \
    --runtime $RUNTIME \
    --source .. \
    --trigger-http
elif [ "$SERVICE_TYPE" = "cloud-run" ]
  echo "Deploy $SERVICE_NAME to $REGION"
  gcloud run deploy $SERVICE_NAME \
    --allow-unauthenticated \
    --region $REGION \
    --source ..

fi