# Node.js: Cloud Functions - HelloAuditLog

An AuditLog triggered Node.js Cloud Functions template.

## Test locally

Install dependencies:

```sh
npm install
```

Run the function:

```sh
npm start

...
> hello-auditlog@0.0.1 start
> functions-framework --target=helloAuditLog

Serving function...
Function: helloAuditLog
Signature type: cloudevent
URL: http://localhost:8080/
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 204 No Content
< Date: Tue, 21 Feb 2023 08:23:04 GMT
< Connection: keep-alive
< Keep-Alive: timeout=5
```

You should see the function log the following:

```sh
Event ID: projects/test-project/logs/cloudaudit.googleapis.com%2Fdata_access1234567123456789
Event type: google.cloud.audit.log.v1.written
Subject: bigquery.googleapis.com/projects/test-project/jobs/sample-job
ServiceName: bigquery.googleapis.com
MethodName: jobservice.jobcompleted
ResourceName: projects/test-project/jobs/sample-job
```

## Before deploying to Google Cloud

Run [setup.sh](scripts/setup.sh) to enable required services, grant the
`pubsub.publisher` role to the Cloud Storage service account and create a Google
Cloud Storage (GCS) bucket:

```sh
./setup.sh
```

## Deploy to Google Cloud

Run [deploy.sh](scripts/deploy.sh) to deploy to Google Cloud:

```sh
./deploy.sh
```

## Test in Google Cloud

Run [test_cloud.sh](scripts/test_cloud.sh) to test the function in Google Cloud:

```sh
./test_cloud.sh
```
