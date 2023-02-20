# Node.js: Cloud Functions - HelloHttp

 An HTTP triggered Node.js Cloud Functions template.

## Test locally

Run the function:

```sh
npm start

...
Serving function...
Function: helloHttp
Signature type: http
URL: http://localhost:8080/
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

Hello World!
```

## Before deploying to Google Cloud

Run [setup.sh](scripts/setup.sh) to enable required services:

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

You can test with `Invoke function via HTTP` in Cloud Code or with `gcloud`.

Run [test_cloud.sh](scripts/test_cloud.sh) to test the function in Google Cloud:

```sh
./test_cloud.sh
```
