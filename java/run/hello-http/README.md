# Java: Cloud Run - hello-http

 An HTTP triggered Java Cloud Run template.

## Test locally

Compile:

```sh
mvn compile
```

Run:

```sh
mvn spring-boot:run

...
2023-02-24 12:56:32.993  INFO 33811 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2023-02-24 12:56:33.002  INFO 33811 --- [           main] run.HelloHttpApplication                 : Started HelloHttpApplication in 1.555 seconds (JVM running for 1.821)
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
