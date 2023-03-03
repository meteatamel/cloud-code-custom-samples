#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import functions_framework
import json
from google.events.cloud.pubsub_v1 import MessagePublishedData

# Register a CloudEvent function with the Functions Framework
@functions_framework.cloud_event
def hello_pubsub(cloud_event):
  print(f"Event ID: {cloud_event['id']}")
  print(f"Event Type: {cloud_event['type']}")

  message_published_data = MessagePublishedData.from_json(json.dumps(cloud_event.data))
  print(f"TextData: {message_published_data.message.data}");
  print(f"Subscription: {message_published_data.subscription}");
