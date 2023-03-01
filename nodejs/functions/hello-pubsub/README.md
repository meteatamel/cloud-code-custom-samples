# Node.js: Cloud Functions - hello-pubsub

A Pub/Sub triggered Node.js Cloud Functions template.

## Test locally

Install dependencies:

```sh
npm install
```

Run the function:

```sh
npm start

...
> hello-pubsub@0.0.1 start
> functions-framework --target=helloPubSub

Serving function...
Function: helloPubSub
Signature type: cloudevent
URL: http://localhost:8080/
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test the function locally:

```sh
./test_local.sh

< HTTP/1.1 204 No Content
< Date: Tue, 21 Feb 2023 08:23:04 GMT
< Connection: keep-alive
< Keep-Alive: timeout=5
```

You should see the following in the function logs:

```sh
Event ID: 6308619096677818
Event Type: google.cloud.pubsub.topic.v1.messagePublished
TextData: Hello World
Subscription: projects/MY-PROJECT/subscriptions/MY-SUB
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
