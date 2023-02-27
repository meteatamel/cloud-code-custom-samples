# Java: Cloud Run - HelloGcs

 A Cloud Storage triggered Java Cloud Run template.

## Test locally

Compile:

```sh
mvn compile
```

Run:

```sh
mvn function:run

2023-02-27 13:33:19.404  INFO 50222 --- [           main] o.s.b.web.embedded.netty.NettyWebServer  : Netty started on port 8080
2023-02-27 13:33:19.411  INFO 50222 --- [           main] run.Application                          : Started Application in 1.172 seconds (JVM running for 1.407)
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
...
2023-02-27 13:34:01.789  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Id: 123451234512345
2023-02-27 13:34:01.789  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Source: //storage.googleapis.com/projects/_/buckets/MY-BUCKET-NAME
2023-02-27 13:34:01.789  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Type: google.cloud.storage.object.v1.finalized
2023-02-27 13:34:01.864  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Name: MY_FILE.txt
2023-02-27 13:34:01.864  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Bucket: MY_BUCKET
2023-02-27 13:34:01.864  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Size: 352
2023-02-27 13:34:01.864  INFO 50222 --- [ctor-http-nio-2] run.Application                          : Content type: text/plain
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
