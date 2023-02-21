# Custom templates for Cloud Code

This repository contains some custom templates for Cloud Code for VS Code. Each
template includes starter code and scripts to test locally and to deploy/test in
the cloud.

To use these templates as starter projects:

1. Click on `Cloud Code` in VS Code.
1. Select `New Application` -> `Custom Application` -> `Import Sample from Repo`
1. Point to this repo.
1. Choose a template as a starter project and follow `README.md` instructions of
   the template.

![Install templates](install.gif)

## Templates

### Cloud Functions

.NET:

* [.NET: Cloud Functions - HelloHttp](dotnet/functions/HelloHttp) - An
  HTTP triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - HelloGcs](dotnet/functions/HelloGcs) - A
  Cloud Storage triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - HelloPubSub](dotnet/functions/HelloPubSub) - A
  Pub/Sub triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - HelloAuditLog](dotnet/functions/HelloAuditLog) - An
  AuditLog triggered .NET Cloud Functions template.

Node.js:

* [Node.js: Cloud Functions - HelloHttp](nodejs/functions/hello-http) - An
  HTTP triggered Node.js Cloud Functions template.
* [Node.js: Cloud Functions - HelloGcs](nodejs/functions/hello-gcs) - A
  Cloud Storage triggered Node.js Cloud Functions template.
* [Node.js: Cloud Functions - HelloPubSub](nodejs/functions/hello-pubsub) - A
  Pub/Sub triggered Node.js Cloud Functions template.
* [Node.js: Cloud Functions - HelloAuditLog](nodejs/functions/hello-auditLog) - An
  AuditLog triggered Node.js Cloud Functions template.

### Cloud Run

* [.NET: Cloud Run - HelloHttp](dotnet/run/HelloHttp) - An HTTP triggered .NET
  Cloud Run template.
* [.NET: Cloud Run - HelloGcs](dotnet/run/HelloGcs) - A Cloud Storage triggered
  .NET Cloud Run template.
* [.NET: Cloud Run - HelloPubSub](dotnet/run/HelloPubSub) - A Pub/Sub triggered
  .NET Cloud Run template.
* [.NET: Cloud Run - HelloAuditLog](dotnet/run/HelloAuditLog) - An AuditLog
  triggered .NET Cloud Run template.

-------

This is not an official Google product.
