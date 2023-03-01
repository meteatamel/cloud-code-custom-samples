# Java: Cloud Functions - hello-http

 An HTTP triggered Java Cloud Functions template.

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
Mar 01, 2023 12:57:13 PM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: Function: functions.Function
Mar 01, 2023 12:57:13 PM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: URL: http://localhost:8080/
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
