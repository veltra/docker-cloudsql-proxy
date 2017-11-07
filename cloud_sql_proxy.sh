#!/usr/bin/env bash
set -eu

echo ${GCLOUD_SERVICE_KEY} | base64 --decode --ignore-garbage > ${HOME}/gcloud-service-key.json

cloud_sql_proxy \
  -instances=${INSTANCEL_CONNECTION_NAME}=tcp:0.0.0.0:3306 \
  -credential_file=${HOME}/gcloud-service-key.json \
  -dir=${HOME}/cloudsql
