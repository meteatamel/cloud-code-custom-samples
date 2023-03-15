# Java: Cloud Functions - hello-pubsub

A Pub/Sub triggered Java Cloud Functions template.

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
Feb 22, 2023 3:18:30 PM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: Function: functions.Function
Feb 22, 2023 3:18:30 PM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: URL: http://localhost:8081/
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 200 OK
< Date: Wed, 22 Feb 2023 13:20:00 GMT
< Content-Length: 0
< Server: Jetty(9.4.45.v20220203)
```

You should see the following in service logs:

```sh
INFO: CloudEvent information:
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO:  ID: 6308619096677818
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO:   Source: //pubsub.googleapis.com/projects/MY-PROJECT/topics/MY-TOPIC
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO:   Type: google.cloud.pubsub.topic.v1.messagePublished
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO: Message published data:
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO:   Message: com.google.events.cloud.pubsub.v1.Message@31560ece
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO:   TextData: Hello World
Feb 22, 2023 3:20:57 PM functions.Function accept
INFO:   Subscription: projects/MY-PROJECT/subscriptions/MY-SUB
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
