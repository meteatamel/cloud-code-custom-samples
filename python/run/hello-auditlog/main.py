# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and

import json
from flask import Flask, request
from cloudevents.http import from_http
# FIXME: This ends up with ModuleNotFoundError: No module named 'google.api'
from google.events.cloud.audit_v1 import LogEntryData

app = Flask(__name__)

@app.route("/", methods=["POST"])
def hello_auditlog():
    cloud_event = from_http(request.headers, request.get_data())

    print(f"Event ID: {cloud_event['id']}")
    print(f"Event Type: {cloud_event['type']}")

    log_entry_data = LogEntryData.from_json(json.dumps(cloud_event.data))
    payload = log_entry_data.proto_payload
    if payload:
      print(f"ServiceName: {payload.service_name}")
      print(f"MethodName: {payload.method_name}")
      print(f"ResourceName: {payload.resource_name}")

    return "", 204

if __name__ == '__main__':
  app.run(host="0.0.0.0", port=8080, use_reloader=True,
          debug=True, threaded=True)
