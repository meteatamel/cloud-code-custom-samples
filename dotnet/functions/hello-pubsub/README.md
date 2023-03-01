# .NET: Cloud Functions - hello-pubsub

A Pub/Sub triggered .NET Cloud Functions template.

## Test locally

Run the function:

```sh
dotnet run

...
2022-11-22T10:48:04.589Z [Microsoft.Hosting.Lifetime] [info] Now listening on: http://127.0.0.1:8080
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 200 OK
< Content-Length: 0
```

You should see the following in service logs:

```sh
Message published information:
  Message: { "data": "SGVsbG8gV29ybGQ=", "attributes": { "attr1": "attr1-value" } }
    TextData: Hello World
  Subscription: projects/MY-PROJECT/subscriptions/MY-SUB
CloudEvent information:
  ID: 6308619096677818
  Source: //pubsub.googleapis.com/projects/MY-PROJECT/topics/MY-TOPIC
  Type: google.cloud.pubsub.topic.v1.messagePublished
  Subject: 
  DataSchema: 
  DataContentType: application/json
  Time: 2020-01-02T12:34:56.789Z
  SpecVersion: CloudNative.CloudEvents.CloudEventsSpecVersion
```

## Before deploying to Google Cloud

Run [setup.sh](scripts/setup.sh) to enable required services, and create a
Pub/Sub topic:

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
