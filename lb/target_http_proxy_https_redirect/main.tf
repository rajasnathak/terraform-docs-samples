/**
 * Copyright 2022 Google LLC
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

# [START cloudloadbalancing_target_http_proxy_https_redirect]
resource "google_compute_target_http_proxy" "default" {
  name    = "test-https-redirect-proxy"
  url_map = google_compute_url_map.default.id
}

resource "google_compute_url_map" "default" {
  name = "url-map"
  default_url_redirect {
    https_redirect = true
    strip_query    = false
  }
}
# [END cloudloadbalancing_target_http_proxy_https_redirect]
