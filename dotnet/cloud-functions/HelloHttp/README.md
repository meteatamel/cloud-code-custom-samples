# .NET: Cloud Functions - HelloHttp

 An HTTP triggered .NET Cloud Functions template.

## Test locally

Run the function:

```sh
dotnet run

...
2022-11-22T10:48:04.589Z [Microsoft.Hosting.Lifetime] [info] Now listening on: http://127.0.0.1:8080
```

Run [test_local.sh](scripts/test.sh) to test the function locally:

```sh
./scripts/test_local.sh

Hello World!
```

## Before deploying to Google Cloud

Run [setup.sh](scripts/setup.sh) to enable required services:

```sh
./scripts/setup.sh
```

## Deploy to Google Cloud

Cloud Code does not support deploying .NET functions yet but you can deploy with
`gcloud`.

Run [deploy.sh](scripts/deploy.sh) to deploy to Google Cloud:

```sh
./scripts/deploy.sh
```

## Test in Google Cloud

You can test with `Invoke function via HTTP` in Cloud Code or with `gcloud`.

Run [test_cloud.sh](scripts/test_cloud.sh) to test the function in Google Cloud:

```sh
./scripts/test_cloud.sh
```
