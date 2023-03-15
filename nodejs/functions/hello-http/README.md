# Node.js: Cloud Functions - hello-http

 An HTTP triggered Node.js Cloud Functions template.

## Test locally

Install dependencies:

```sh
npm install
```

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

## Cleanup

When you're done, you can cleanup created resources:

```sh
./cleanup.sh
```
