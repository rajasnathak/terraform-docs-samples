/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# Example configuration of a Cloud Run service with request timeout

# [START cloudrun_service_configuration_request_timeout]
resource "google_cloud_run_service" "default" {
  name     = "cloudrun-service-request-timeout"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
      # Timeout
      # https://cloud.google.com/run/docs/configuring/request-timeout
      timeout_seconds = 300
    }
  }
}
# [END cloudrun_service_configuration_request_timeout]
