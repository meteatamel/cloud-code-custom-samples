#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import functions_framework
import json
from google.events.cloud import storage

# Register a CloudEvent function with the Functions Framework
@functions_framework.cloud_event
def hello_gcs(cloud_event):
  print(f"Event ID: {cloud_event['id']}")
  print(f"Event Type: {cloud_event['type']}")

  storageObjectData = storage.StorageObjectData.from_json(json.dumps(cloud_event.data))
  print(f"Bucket: {storageObjectData.bucket}")
  print(f"File: {storageObjectData.name}")
  print(f"Metageneration: {storageObjectData.metageneration}")
  print(f"Created: {storageObjectData.time_created}")
  print(f"Updated: {storageObjectData.updated}")
