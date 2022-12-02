# Custom templates for Cloud Code

This repository contains some useful custom templates for Cloud Code for VS
Code. Each template includes scripts to test locally and also to deploy and test
in the cloud.

To use these templates, you can:

1. Click on `Cloud Code` in VS Code.
1. Select `New Application` -> `Custom Application` -> `Import Sample from Repo`
1. Point to this repo

![Install templates](install.gif)

More details in this
[doc](https://cloud.google.com/code/docs/vscode/create-app-from-custom-sample#creating_your_app_from_an_imported_sample)
page.

## Templates

Cloud Functions:

* [.NET: Cloud Functions - HelloHttp](dotnet/functions/HelloHttp) - An
  HTTP triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - HelloGcs](dotnet/functions/HelloGcs) - A
  Cloud Storage triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - HelloPubSub](dotnet/functions/HelloPubSub) - A
  Pub/Sub triggered .NET Cloud Functions template.
* [.NET: Cloud Functions - HelloAuditLog](dotnet/functions/HelloAuditLog) - An
  AuditLog triggered .NET Cloud Functions template.

Cloud Run:

* [.NET: Cloud Run - HelloHttp](dotnet/run/HelloHttp) - An HTTP triggered .NET
  Cloud Run template.
* [.NET: Cloud Run - HelloGcs](dotnet/run/HelloGcs) - A Cloud Storage triggered
  .NET Cloud Run template.
* [.NET: Cloud Run - HelloPubSub](dotnet/run/HelloPubSub) - A Pub/Sub triggered
  .NET Cloud Run template.

-------

This is not an official Google product.
