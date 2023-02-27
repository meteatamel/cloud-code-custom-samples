/*
 * Copyright 2023 Google LLC
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
import com.google.events.cloud.audit.v1.LogEntryData;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.util.JsonFormat;
import io.cloudevents.CloudEvent;
import java.util.logging.Logger;

public class Function implements CloudEventsFunction {

  private static final Logger logger = Logger.getLogger(Function.class.getName());

  @Override
  public void accept(CloudEvent cloudEvent) throws InvalidProtocolBufferException {

    // CloudEvent information
    logger.info("Id: " + cloudEvent.getId());
    logger.info("Source: " + cloudEvent.getSource());
    logger.info("Type: " + cloudEvent.getType());

    String json = new String(cloudEvent.getData().toBytes());
    LogEntryData.Builder builder = LogEntryData.newBuilder();
    JsonFormat.parser().merge(json, builder);
    LogEntryData data = builder.build();

    logger.info("ProtoPayload: " + data.getProtoPayload());
    logger.info("ServiceName: " + data.getProtoPayload().getServiceName());
    logger.info("MethodName: " + data.getProtoPayload().getMethodName());
    logger.info("ResourceName: " + data.getProtoPayload().getResourceName());
  }
}