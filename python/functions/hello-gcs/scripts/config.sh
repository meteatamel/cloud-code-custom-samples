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

export PROJECT_ID=$(gcloud config get-value project)
export PROJECT_NUMBER=$(gcloud projects describe $PROJECT_ID --format='value(projectNumber)')
export BUCKET_NAME="cloud-functions-bucket-${PROJECT_ID}"
export REGION=us-central1
export RUNTIME=python310
export FUNCTION_NAME=hello-gcs
export ENTRY_POINT=hello_gcs
export SERVICE_TYPE=functions
export SERVICE_NAME=$FUNCTION_NAME-$SERVICE_TYPE-$RUNTIME
