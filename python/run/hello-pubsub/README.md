# Python: Cloud Run - hello-pubsub

 A Pub/Sub triggered Python Cloud Run template.

## Test locally

Install dependencies:

```sh
pip3 install -r requirements.txt
```

Run the function:

```sh
python3 main.py
...
 * Running on http://192.168.1.74:8080/ (Press CTRL+C to quit)
...
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test locally:

```sh
./test_local.sh

< HTTP/1.1 204 NO CONTENT
< Server: Werkzeug/2.2.3 Python/3.10.4
< Date: Fri, 03 Mar 2023 10:04:41 GMT
```

You should see the following in the function logs:

```sh
Event ID: 6308619096677818
Event Type: google.cloud.pubsub.topic.v1.messagePublished
TextData: b'Hello World'
Subscription: projects/MY-PROJECT/subscriptions/MY-SUB
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

## Cleanup

When you're done, you can cleanup created resources:

```sh
./cleanup.sh
```
