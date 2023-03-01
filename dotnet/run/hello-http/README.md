# .NET: Cloud Run - hello-http

 An HTTP triggered .NET Cloud Run template.

## Test locally

Run locally:

```sh
dotnet run

...
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: http://0.0.0.0:8080
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test locally:

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

Run [test_cloud.sh](scripts/test_cloud.sh) to test the service in Google Cloud:

```sh
./test_cloud.sh
```
