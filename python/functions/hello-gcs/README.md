# Python: Cloud Functions - hello-gcs

A Cloud Storage triggered Python Cloud Functions template.

## Test locally

Install dependencies:

```sh
pip3 install -r requirements.txt
```

Run the function:

```sh
functions-framework --target=hello_gcs --debug
...
 * Running on http://192.168.1.74:8080/ (Press CTRL+C to quit)
...
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 200 OK
< Server: Werkzeug/2.2.3 Python/3.10.4
< Date: Fri, 03 Mar 2023 08:12:36 GMT
< Content-Type: text/html; charset=utf-8
```

You should see the following in the function logs:

```sh
Event ID: 123451234512345
Event Type: google.cloud.storage.object.v1.finalized
Bucket: MY_BUCKET
File: MY_FILE.txt
Metageneration: 1
Created: 2020-04-23 07:38:57.230000+00:00
Updated: 2020-04-23 07:38:57.230000+00:00
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
