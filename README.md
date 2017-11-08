# docker-cloudsql-proxy [![CircleCI](https://circleci.com/gh/veltra/docker-cloudsql-proxy/tree/master.svg?style=svg&circle-token=b56a532d454fb59757a1d589c50e8e912f500dd2)](https://circleci.com/gh/veltra/docker-cloudsql-proxy/tree/master)

[Cloud SQL Proxy](https://github.com/GoogleCloudPlatform/cloudsql-proxy) with Docker

## Environment Variables

| Environment                | Variables                                                    |
|:---------------------------|:-------------------------------------------------------------|
| `GCLOUD_SERVICE_KEY`       | Base64 encoded Google Cloud Service Account credential file. |
| `CLOUDSQL_CONNECTION_NAME` | The Instance connection name of Google Cloud SQL             |

You’ll need to encode it in base64 format. To do so, on Linux or macOS, type:

```
base64 credentials.json
```
