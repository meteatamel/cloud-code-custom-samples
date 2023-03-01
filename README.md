# Custom templates for Cloud Code

## What are these templates?

This repository contains some starter Cloud Functions and Cloud Run templates
for Cloud Code for VS Code for different languages. Each template includes
minimal starter code for HTTP or CloudEvent triggered Cloud Functions or Cloud
Run services that use the recommended libraries ([CloudEvents
SDK](https://cloudevents.io/) and [Google CloudEvents
libraries](https://github.com/googleapis/google-cloudevents)) for each language.
They also includes lightweight `gcloud` based scripts to quickly test services
locally, deploy to the cloud, and test in the cloud.

## Why these templates?

Cloud Code comes with some default Cloud Run and Cloud Functions templates
(hosted in
[cloud-code-samples](https://github.com/GoogleCloudPlatform/cloud-code-samples)
repo) but they're limited:

* Only four languages are supported (Node.js, Python, Go, and Java) in Cloud
  Functions templates and deployment. I’ve especially missed the NET support.
* Templates for Cloud Run and Cloud Functions are only for HTTP triggered
  services. No templates for event triggered services.
* Testing only works against deployed HTTP triggered services. No testing
  support for locally running services or event triggered services.

## How do I use these templates?

You can use these templates in standalone Cloud Code for VS Code or the Cloud
Code in the editor of Cloud Shell in the browser.

To use these templates as starter projects:

1. Click on `Cloud Code` in VS Code.
1. Select `New Application` -> `Custom Application` -> `Import Sample from Repo`
1. Point to this repository.
1. Choose a template as a starter project and follow the instructions in the
   `README.md`of the template.

![Install templates](install.gif)

## Templates

### Cloud Functions

.NET:

* [.NET: Cloud Functions - hello-http](dotnet/functions/hello-http) - An
  HTTP triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - hello-gcs](dotnet/functions/hello-gcs) - A
  Cloud Storage triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - hello-pubsub](dotnet/functions/hello-pubsub) - A
  Pub/Sub triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - hello-auditlog](dotnet/functions/hello-auditlog) - An
  AuditLog triggered .NET Cloud Functions template.

Java:

* [Java: Cloud Functions - hello-http](java/functions/hello-http) - An
  HTTP triggered Java Cloud Functions template.
* [Java: Cloud Functions - HelloGcs](java/functions/hello-gcs) - A
  Cloud Storage triggered Java Cloud Functions template.
* [Java: Cloud Functions - HelloPubSub](java/functions/hello-pubsub) - A
  Pub/Sub triggered Java Cloud Functions template.
* [Java: Cloud Functions - HelloAuditLog](java/functions/hello-auditlog) - An
  AuditLog triggered Java Cloud Functions template.

Node.js:

* [Node.js: Cloud Functions - hello-http](nodejs/functions/hello-http) - An
  HTTP triggered Node.js Cloud Functions template.
* [Node.js: Cloud Functions - HelloGcs](nodejs/functions/hello-gcs) - A
  Cloud Storage triggered Node.js Cloud Functions template.
* [Node.js: Cloud Functions - HelloPubSub](nodejs/functions/hello-pubsub) - A
  Pub/Sub triggered Node.js Cloud Functions template.
* [Node.js: Cloud Functions - HelloAuditLog](nodejs/functions/hello-auditLog) - An
  AuditLog triggered Node.js Cloud Functions template.

Python:

* [Python: Cloud Functions - hello-http](python/functions/hello-http) - An
  HTTP triggered Python Cloud Functions template.

### Cloud Run

.NET:

* [.NET: Cloud Run - hello-http](dotnet/run/hello-http) - An HTTP triggered .NET
  Cloud Run template.
* [.NET: Cloud Run - hello-gcs](dotnet/run/hello-gcs) - A Cloud Storage triggered
  .NET Cloud Run template.
* [.NET: Cloud Run - hello-pubsub](dotnet/run/hello-pubsub) - A Pub/Sub triggered
  .NET Cloud Run template.
* [.NET: Cloud Run - hello-auditlog](dotnet/run/hello-auditlog) - An AuditLog
  triggered .NET Cloud Run template.

Java:

* [Java: Cloud Run - hello-http](java/run/hello-http) - An HTTP triggered Java
  Cloud Run template.
* [Java: Cloud Run - HelloGcs](java/run/hello-gcs) - A Cloud Storage triggered
  Java Cloud Run template.
* [Java: Cloud Run - HelloPubSub](java/run/hello-pubsub) - A Pub/Sub triggered
  Java Cloud Run template.
* [Java: Cloud Run - HelloAuditLog](dotnet/run/hello-audit-log) - An AuditLog
  triggered Java Cloud Run template.

Node.js:

* [Node.js: Cloud Run - hello-http](nodejs/run/hello-http) - An HTTP triggered Node.js
  Cloud Run template.
* [Node.js: Cloud Run - HelloGcs](nodejs/run/hello-gcs) - A Cloud Storage triggered
  Node.js Cloud Run template.
* [Node.js: Cloud Run - HelloPubSub](nodejs/run/hello-pubsub) - A Pub/Sub triggered
  Node.js Cloud Run template.
* [Node.js: Cloud Run - HelloAuditLog](nodejs/run/hello-auditLog) - An AuditLog
  triggered Node.js Cloud Run template.

-------

This is not an official Google product.
