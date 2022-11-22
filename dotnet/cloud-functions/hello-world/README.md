# .NET: Cloud Functions - Hello World

A simple .NET Cloud Functions app.

## Test locally

Start:

```sh
dotnet run

...
2022-11-22T10:48:04.589Z [Microsoft.Hosting.Lifetime] [info] Now listening on: http://127.0.0.1:8080
```

Test:

```sh
curl http://localhost:8080

Hello World!
```

## Deploy to Google Cloud

Enable require services:

```sh
gcloud services enable \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  cloudfunctions.googleapis.com \
  run.googleapis.com
```

Cloud Code does not support deploying .NET functions yet but you can deploy with
`gcloud`:

```sh
gcloud functions deploy dotnet-hello-world \
  --allow-unauthenticated \
  --entry-point cloud_function_hello_world.Function \
  --gen2 \
  --region us-central1 \
  --runtime dotnet6 \
  --trigger-http
```

## Test in Google Cloud

You can test with `Invoke function via HTTP` in Cloud Code or with `gcloud`:

```sh
gcloud functions call dotnet-hello-world \
  --gen2 \
  --region us-central1
```
