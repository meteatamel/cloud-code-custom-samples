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
export REGION=us-central1
export RUNTIME=python310
export CANON_FUNCTION_NAME=hello-http
export FUNCTION_NAME=hello_http
export SERVICE_TYPE=functions
export SERVICE_NAME=$FUNCTION_NAME-$SERVICE_TYPE-$RUNTIME

export TEMPLATE_DIR="/Users/$USER/Library/Application Support/cloud-code/custom-templates"
export REPO_NAME=https-github-com-meteatamel-cloud-code-custom-templates-git-1

# Copy scripts from common dir to app dir (if not already there).
if [[ ! -d scripts ]]
then
  mkdir scripts 
  cp "$TEMPLATE_DIR/$REPO_NAME/common/$CANON_FUNCTION_NAME"/* scripts
fi