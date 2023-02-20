# Node.js: Cloud Functions - HelloGcs

A Cloud Storage triggered Node.js Cloud Functions template.

## Test locally

Run the function:

```sh
npm start

...
2022-11-22T10:48:04.589Z [Microsoft.Hosting.Lifetime] [info] Now listening on: http://127.0.0.1:8080
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 204 No Content
< Date: Mon, 20 Feb 2023 14:45:00 GMT
< Connection: keep-alive
< Keep-Alive: timeout=5
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
