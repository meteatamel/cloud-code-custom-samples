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

echo "Trigger the function by sending a binary-mode CloudEvent with a Pub/Sub message as the event data"
curl localhost:8080 -v \
  -X POST \
  -H "Content-Type: application/json" \
  -H "ce-specversion: 1.0" \
  -H "ce-id: 6308619096677818" \
  -H "ce-time: 2020-01-02T12:34:56.789Z" \
  -H "ce-type: google.cloud.pubsub.topic.v1.messagePublished" \
  -H "ce-source: //pubsub.googleapis.com/projects/MY-PROJECT/topics/MY-TOPIC" \
  -d '{
        "message": {
          "data": "SGVsbG8gV29ybGQ=",
          "attributes": {
             "attr1":"attr1-value"
          }
        },
        "subscription": "projects/MY-PROJECT/subscriptions/MY-SUB"
      }'

# A structured-mode CloudEvent is one where the entire event (attributes and data) are encoded in the message body.

# echo "Trigger the function by sending a structured-mode CloudEvent with a Pub/Sub message as the event data"
# curl localhost:8080 -v \
#   -X POST \
#   -H "Content-Type: application/cloudevents+json" \
#   -d '{
#         "specversion": "1.0",
#         "id": "6308619096677818",
#         "time": "2020-01-02T12:34:56.789Z",
#         "type": "google.cloud.pubsub.topic.v1.messagePublished",
#         "source": "//pubsub.googleapis.com/projects/MY-PROJECT/topics/MY-TOPIC",
#         "data": {
#           "message": {
#             "data": "SGVsbG8gV29ybGQ=",
#             "attributes": {
#               "attr1":"attr1-value"
#             }
#           },
#           "subscription": "projects/MY-PROJECT/subscriptions/MY-SUB"
#         }
#       }'
