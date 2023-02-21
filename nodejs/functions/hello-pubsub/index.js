// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

'use strict';

const functions = require('@google-cloud/functions-framework');

// Register a CloudEvent callback with the Functions Framework that will
// be executed when the Pub/Sub trigger topic receives a message.
functions.cloudEvent('helloPubSub', cloudEvent => {
  console.log(`Event ID: ${cloudEvent.id}`);
  console.log(`Event Type: ${cloudEvent.type}`);

  // The Pub/Sub message is passed as the CloudEvent's data payload.
  console.log(`  Message: ${cloudEvent.data.message}`);

  const base64Data = cloudEvent.data.message.data;
  const textData = base64Data ? Buffer.from(base64Data, 'base64').toString() : '';
  console.log(`    textData: ${textData}`);
  console.log(`  Subscription: ${cloudEvent.data.subscription}`);
 });
 