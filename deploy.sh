#!/bin/bash

gcloud functions deploy gcs-file-processor \
  --gen2 \
  --runtime=python311 \
  --region=us-central1 \
  --source=/home/jinnuaz/google_cloud_function/ \
  --entry-point=process_file \
  --trigger-event-filters="type=google.cloud.storage.object.v1.finalized" \
  --trigger-event-filters="bucket=urbancart-dw-landing-2026"