# Node.js: Cloud Run - HelloHttp

 An HTTP triggered Node.js Cloud Run template.

## Test locally

Install dependencies:

```sh
npm install
```

Run the function:

```sh
npm start

...
> hello-http@0.0.1 start
> node index.js

Listening on port 8080
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
