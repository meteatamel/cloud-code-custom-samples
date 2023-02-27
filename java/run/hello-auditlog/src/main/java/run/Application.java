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

package run;

import io.cloudevents.CloudEvent;
import io.cloudevents.spring.webflux.CloudEventHttpMessageReader;
import io.cloudevents.spring.webflux.CloudEventHttpMessageWriter;

import java.util.logging.Logger;

import com.google.events.cloud.audit.v1.LogEntryData;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.util.JsonFormat;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.codec.CodecCustomizer;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.http.codec.CodecConfigurer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Application {

    private static final Logger logger = Logger.getLogger(Application.class.getName());

    @Configuration
    public static class CloudEventHandlerConfiguration implements CodecCustomizer {

      @Override
      public void customize(CodecConfigurer configurer) {
        configurer.customCodecs().register(new CloudEventHttpMessageReader());
        configurer.customCodecs().register(new CloudEventHttpMessageWriter());
      }
    }

    @PostMapping("/")
    ResponseEntity<Void> handleCloudEvent(@RequestBody CloudEvent cloudEvent) throws InvalidProtocolBufferException {

      // CloudEvent information
      logger.info("Id: " + cloudEvent.getId());
      logger.info("Source: " + cloudEvent.getSource());
      logger.info("Type: " + cloudEvent.getType());

      String json = new String(cloudEvent.getData().toBytes());
      LogEntryData.Builder builder = LogEntryData.newBuilder();
      JsonFormat.parser().merge(json, builder);
      LogEntryData data = builder.build();

      // Audit log data
      logger.info("ProtoPayload: " + data.getProtoPayload());
      logger.info("ServiceName: " + data.getProtoPayload().getServiceName());
      logger.info("MethodName: " + data.getProtoPayload().getMethodName());
      logger.info("ResourceName: " + data.getProtoPayload().getResourceName());

      return ResponseEntity.ok().build();
    }

  public static void main(String[] args) {
    SpringApplication.run(Application.class, args);
  }
}
