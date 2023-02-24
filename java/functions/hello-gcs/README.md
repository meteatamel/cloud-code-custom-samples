# Java: Cloud Functions - HelloGcs

A Cloud Storage triggered Java Cloud Functions template.

## Test locally

Compile:

```sh
mvn compile
```

Run the function:

```sh
mvn function:run

...
INFO: Serving function...
Feb 23, 2023 1:42:04 PM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: Function: functions.Function
Feb 23, 2023 1:42:04 PM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: URL: http://localhost:8081/
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 200 OK
< Date: Thu, 23 Feb 2023 11:42:31 GMT
< Content-Length: 0
< Server: Jetty(9.4.45.v20220203)
```

You should see the following in the service logs:

```sh
...
Feb 24, 2023 11:01:04 AM functions.Function accept
INFO: Source: //storage.googleapis.com/projects/_/buckets/MY-BUCKET-NAME
Feb 24, 2023 11:01:04 AM functions.Function accept
INFO: Type: google.cloud.storage.object.v1.finalized
Feb 24, 2023 11:01:04 AM functions.Function accept
INFO: Name: MY_FILE.txt
Feb 24, 2023 11:01:04 AM functions.Function accept
INFO: Bucket: MY_BUCKET
Feb 24, 2023 11:01:04 AM functions.Function accept
INFO: Size: 352
Feb 24, 2023 11:01:04 AM functions.Function accept
INFO: Content type: text/plain
```

## Before deploying to Google Cloud

Run [setup.sh](scripts/setup.sh) to enable required services, grant the
`pubsub.publisher` role to the Cloud Storage service account and create a Google
Cloud Storage (GCS) bucket:

```sh
./setup.sh
```

## Deploy to Google Cloud

Cloud Code does not support deploying .NET functions yet but you can deploy with
`gcloud`.

Run [deploy.sh](scripts/deploy.sh) to deploy to Google Cloud:

```sh
./deploy.sh
```

## Test in Google Cloud

Run [test_cloud.sh](scripts/test_cloud.sh) to test the function in Google Cloud:

```sh
./test_cloud.sh
```
