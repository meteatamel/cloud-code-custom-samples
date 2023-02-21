# Node.js: Cloud Run - HelloAuditLog

 An AuditLog triggered Node.js Cloud Run template.

## Test locally

Install dependencies:

```sh
npm install
```

Run the function:

```sh
npm start

> hello-gcs@0.0.1 start
> node index.js

Listening on port 8080
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test locally:

```sh
./test_local.sh

< HTTP/1.1 204 No Content
< X-Powered-By: Express
< Date: Tue, 21 Feb 2023 12:56:12 GMT
< Connection: keep-alive
< Keep-Alive: timeout=5
```

You should see the following in the service logs:

```sh
Event ID: projects/test-project/logs/cloudaudit.googleapis.com%2Fdata_access1234567123456789
Event type: google.cloud.audit.log.v1.written
Subject: bigquery.googleapis.com/projects/test-project/jobs/sample-job
ServiceName: bigquery.googleapis.com
MethodName: jobservice.jobcompleted
ResourceName: projects/test-project/jobs/sample-job
```

## Before deploying to Google Cloud

Run [setup.sh](scripts/setup.sh) to enable required services:

```sh
./setup.sh
```

## Deploy to Google Cloud

Run [deploy.sh](scripts/deploy.sh) to deploy to Google Cloud:

```sh
./deploy.sh
```

## Test in Google Cloud

TODO
