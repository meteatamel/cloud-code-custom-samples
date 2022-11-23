#!/bin/bash

echo "Trigger the function by sending a Pub/Sub CloudEvent"
set -v
curl localhost:8080 -v \
  -X POST \
  -H "Content-Type: application/json" \
  -H "ce-id: 6308619096677818" \
  -H "ce-specversion: 1.0" \
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