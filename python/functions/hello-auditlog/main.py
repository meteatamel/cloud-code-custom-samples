#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import functions_framework
import json

# Register a CloudEvent function with the Functions Framework
@functions_framework.cloud_event
def hello_auditlog(cloud_event):
    print(f"Event ID: {cloud_event['id']}")
    print(f"Event Type: {cloud_event['type']}")

    payload = cloud_event.data.get("protoPayload")
    if payload:
        print(f"ServiceName: {payload.get('service_name')}")
        print(f"MethodName: {payload.get('method_name')}")
        print(f"ResourceName: {payload.get('resource_name')}")
