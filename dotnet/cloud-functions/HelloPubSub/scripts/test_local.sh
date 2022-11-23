#!/bin/bash

# TODO: Make sure data.json is an actual Pub/Sub CloudEvent.

echo "Trigger the function by sending a Pub/Sub CloudEvent"
set -v
curl -X POST \
    -H "content-type: application/json"  \
    -d @data.json \
  http://localhost:8080 -v