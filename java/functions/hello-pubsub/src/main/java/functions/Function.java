/*
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package functions;

import com.google.cloud.functions.CloudEventsFunction;
import com.google.events.cloud.pubsub.v1.MessagePublishedData;
import com.google.events.cloud.pubsub.v1.Message;
import com.google.gson.Gson;
import io.cloudevents.CloudEvent;
import java.util.Base64;
import java.util.logging.Logger;

public class Function implements CloudEventsFunction {

  private static final Logger logger = Logger.getLogger(Function.class.getName());

  @Override
  public void accept(CloudEvent cloudEvent) {

    logger.info("CloudEvent information:");
    logger.info(" ID: " + cloudEvent.getId());
    logger.info("  Source: " + cloudEvent.getSource());
    logger.info("  Type: " + cloudEvent.getType());

    String cloudEventData = new String(cloudEvent.getData().toBytes());
    Gson gson = new Gson();
    MessagePublishedData data = gson.fromJson(cloudEventData, MessagePublishedData.class);

    Message message = data.getMessage();
    String encodedData = message.getData();
    String textData = new String(Base64.getDecoder().decode(encodedData));

    logger.info("Message published data:");
    logger.info("  Message: " + data.getMessage());
    logger.info("  TextData: " + textData);
    logger.info("  Subscription: " + data.getSubscription());

  }
}