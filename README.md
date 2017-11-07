# docker-cloudsql-proxy

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
