# Python: Cloud Run - hello-auditlog

 An AuditLog triggered Python Cloud Run template.

## Test locally

Install dependencies:

```sh
pip3 install -r requirements.txt
```

Run the function:

```sh
python3 main.py
...
 * Running on http://192.168.1.74:8080/ (Press CTRL+C to quit)
...
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
