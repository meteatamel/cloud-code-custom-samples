# Java: Cloud Run - hello-auditlog

 An AuditLog triggered Java Cloud Run template.

## Test locally

Compile:

```sh
mvn compile
```

Run the function:

```sh
mvn spring-boot:run

...
2023-02-27 16:16:10.216  INFO 63349 --- [           main] o.s.b.web.embedded.netty.NettyWebServer  : Netty started on port 8080
2023-02-27 16:16:10.224  INFO 63349 --- [           main] run.Application                          : Started Application in 1.629 seconds (JVM running for 1.95)
```

Inside the [scripts](scripts) folder, run [test_local.sh](scripts/test.sh) to
test locally:

```sh
./test_local.sh

< HTTP/1.1 200 OK
< content-length: 0
```

You should see the following in service logs:

```sh
2023-02-27 16:16:32.797  INFO 63349 --- [ctor-http-nio-2] run.Application                          : ServiceName: bigquery.googleapis.com
2023-02-27 16:16:32.797  INFO 63349 --- [ctor-http-nio-2] run.Application                          : MethodName: jobservice.jobcompleted
2023-02-27 16:16:32.797  INFO 63349 --- [ctor-http-nio-2] run.Application                          : ResourceName: projects/test-project/jobs/sample-job
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

TODO
