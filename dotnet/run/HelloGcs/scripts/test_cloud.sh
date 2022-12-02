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

echo "Triggering $SERVICE_NAME by uploading a file to $BUCKET_NAME"

echo "Hello from Storage" > random2.txt
gsutil cp random2.txt gs://${BUCKET_NAME}
rm random2.txt

echo "Wait a little and read the logs"
sleep 3
gcloud alpha run services logs read $SERVICE_NAME \
  --region $REGION --limit=100