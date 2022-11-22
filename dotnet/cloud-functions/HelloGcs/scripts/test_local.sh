#!/bin/bash

echo "Trigger the function by sending a Cloud Storage CloudEvent"
curl -X POST \
    -H "content-type: application/json"  \
    -d @storage.json \
  http://localhost:8080 -v