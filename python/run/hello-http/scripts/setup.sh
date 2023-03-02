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

echo "Enable required services"
set -v

# Required services for both functions and run
gcloud services enable \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  eventarc.googleapis.com \
  run.googleapis.com

if [ "$SERVICE_TYPE" = "functions" ]
then
gcloud services enable \
  cloudfunctions.googleapis.com
fi

echo "Create a Pub/Sub topic: $TOPIC_NAME"
gcloud pubsub topics create ${TOPIC_NAME}