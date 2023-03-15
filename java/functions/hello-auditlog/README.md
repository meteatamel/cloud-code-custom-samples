# Java: Cloud Functions - hello-auditlog

An AuditLog triggered Java Cloud Functions template.

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
Feb 24, 2023 10:39:15 AM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
INFO: Function: functions.Function
Feb 24, 2023 10:39:15 AM com.google.cloud.functions.invoker.runner.Invoker logServerInfo
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
Feb 24, 2023 10:40:27 AM functions.Function accept
INFO: ProtoPayload: status {
}
authentication_info {
  principal_email: "robot@test-project.iam.gserviceaccount.com"
}
...
Feb 24, 2023 10:40:27 AM functions.Function accept
INFO: ServiceName: bigquery.googleapis.com
Feb 24, 2023 10:40:27 AM functions.Function accept
INFO: MethodName: jobservice.jobcompleted
Feb 24, 2023 10:40:27 AM functions.Function accept
INFO: ResourceName: projects/test-project/jobs/sample-job
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

## Cleanup

When you're done, you can cleanup created resources:

```sh
./cleanup.sh
```
