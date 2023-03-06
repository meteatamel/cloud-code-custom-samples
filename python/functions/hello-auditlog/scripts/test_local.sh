# GENERATED FILE - DO NOT EDIT (source lives in common folder)
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

echo "Trigger the function by sending an AuditLog CloudEvent"
set -v
curl localhost:8080 -v \
  -X POST \
  -H "Content-Type: application/json" \
  -H "ce-id: projects/test-project/logs/cloudaudit.googleapis.com%2Fdata_access1234567123456789" \
  -H "ce-specversion: 1.0" \
  -H "ce-time: 2020-01-02T12:34:56.789Z" \
  -H "ce-type:google.cloud.audit.log.v1.written" \
  -H "ce-source: bigquery.googleapis.com/projects/test-project/jobs/sample-job" \
  -H "ce-subject: bigquery.googleapis.com/projects/test-project/jobs/sample-job" \
  -d '{
        "insertId": "1234567",
        "logName": "projects/test-project/logs/cloudaudit.googleapis.com%2Fdata_access",
        "protoPayload": {
          "authenticationInfo": {
            "principalEmail": "robot@test-project.iam.gserviceaccount.com"
          },
          "methodName": "jobservice.jobcompleted",
          "requestMetadata": {
            "callerIp": "2620:15c:0:200:1a75:e914:115b:e970",
            "callerSuppliedUserAgent": "google-cloud-sdk357.0.0 (gzip),gzip(gfe)",
            "destinationAttributes": {
            },
            "requestAttributes": {
            }
          },
          "resourceName": "projects/test-project/jobs/sample-job",
          "serviceData": {
            "jobCompletedEvent": {
              "eventName": "query_job_completed",
              "job": {
                "jobConfiguration": {
                  "query": {
                    "createDisposition": "CREATE_IF_NEEDED",
                    "defaultDataset": {
                    },
                    "destinationTable": {
                      "datasetId": "sample-dataset",
                      "projectId": "test-project",
                      "tableId": "sample-table"
                    },
                    "query": "sample-query",
                    "queryPriority": "QUERY_INTERACTIVE",
                    "statementType": "SELECT",
                    "writeDisposition": "WRITE_TRUNCATE"
                  }
                },
                "jobName": {
                  "jobId": "sample-job",
                  "location": "US",
                  "projectId": "test-project"
                },
                "jobStatistics": {
                  "billingTier": 1,
                  "createTime": "2021-11-25T21:55:59.872Z",
                  "endTime": "2021-11-25T21:56:00.236Z",
                  "queryOutputRowCount": "10",
                  "referencedTables": [
                    {
                      "datasetId": "sample-dataset-reference",
                      "projectId": "bigquery-samples",
                      "tableId": "full"
                    }
                  ],
                  "startTime": "2021-11-25T21:55:59.956Z",
                  "totalBilledBytes": "12345",
                  "totalProcessedBytes": "12345",
                  "totalSlotMs": "123",
                  "totalTablesProcessed": 1
                },
                "jobStatus": {
                  "error": {
                  },
                  "state": "DONE"
                }
              }
            }
          },
          "serviceName": "bigquery.googleapis.com",
          "status": {
          }
        },
        "receiveTimestamp": "2021-11-25T21:56:00.653866570Z",
        "resource": {
          "labels": {
            "project_id": "test-project"
          },
          "type": "bigquery_resource"
        },
        "severity": "INFO",
        "timestamp": "2021-11-25T21:56:00.276607Z"
      }'
