# Java: Cloud Run - hello-pubsub

 A Pub/Sub triggered Java Cloud Run template.

## Test locally

Compile:

```sh
mvn compile
```

Run:

```sh
mvn spring-boot:run

...
2023-02-27 14:41:23.419  INFO 57975 --- [           main] o.s.b.web.embedded.netty.NettyWebServer  : Netty started on port 8080
2023-02-27 14:41:23.426  INFO 57975 --- [           main] run.Application                          : Started Application in 1.573 seconds (JVM running for 1.951)
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test locally:

```sh
./test_local.sh

< HTTP/1.1 200 OK
< content-length: 0
```

You should see the following in the service logs:

```sh
2023-02-27 14:41:42.883  INFO 57975 --- [ctor-http-nio-2] run.Application                          : Id: 6308619096677818
2023-02-27 14:41:42.883  INFO 57975 --- [ctor-http-nio-2] run.Application                          : Source: //pubsub.googleapis.com/projects/MY-PROJECT/topics/MY-TOPIC
2023-02-27 14:41:42.883  INFO 57975 --- [ctor-http-nio-2] run.Application                          : Type: google.cloud.pubsub.topic.v1.messagePublished
2023-02-27 14:41:42.987  INFO 57975 --- [ctor-http-nio-2] run.Application                          : Message: data: "Hello World"
attributes {
  key: "attr1"
  value: "attr1-value"
}

2023-02-27 14:41:42.987  INFO 57975 --- [ctor-http-nio-2] run.Application                          : TextData: Hello World
2023-02-27 14:41:42.987  INFO 57975 --- [ctor-http-nio-2] run.Application                          : Subscription: projects/MY-PROJECT/subscriptions/MY-SUB
...

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

