#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import functions_framework
from google.cloud import logging

logging_client = logging.Client()
logger = logging_client.logger("test")

# Register a CloudEvent function with the Functions Framework
@functions_framework.cloud_event
def hello_gcs(cloud_event):
  logger.log_text(f"Event ID: {cloud_event['id']}")
  logger.log_text(f"Event Type: {cloud_event['type']}")

  data = cloud_event.get_data()
  print(f"Bucket: {data['bucket']}")
  print(f"File: {data['name']}")
  print(f"Metageneration: {data['metageneration']}")
  print(f"Created: {data['timeCreated']}")
  print(f"Updated: {data['updated']}")
  return "OK"
