// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

using CloudNative.CloudEvents;
using CloudNative.CloudEvents.AspNetCore;
using Google.Events.Protobuf.Cloud.PubSub.V1;

var builder = WebApplication.CreateBuilder(args);

var port = Environment.GetEnvironmentVariable("PORT") ?? "8080";
var url = $"http://0.0.0.0:{port}";
builder.WebHost.UseUrls(url);

var app = builder.Build();

app.MapPost("/", async context =>
{
    var cloudEventFormatter = CloudEventFormatterAttribute.CreateFormatter(typeof(MessagePublishedData));
    var cloudEvent = await context.Request.ToCloudEventAsync(cloudEventFormatter);
    var data = cloudEvent.Data as MessagePublishedData;

    Console.WriteLine("Message published information:");
    Console.WriteLine($"  Message: {data?.Message}");
    Console.WriteLine($"    TextData: {data?.Message?.TextData}");
    Console.WriteLine($"  Subscription: {data?.Subscription}");
    Console.WriteLine("CloudEvent information:");
    Console.WriteLine($"  ID: {cloudEvent.Id}");
    Console.WriteLine($"  Source: {cloudEvent.Source}");
    Console.WriteLine($"  Type: {cloudEvent.Type}");
    Console.WriteLine($"  Subject: {cloudEvent.Subject}");
    Console.WriteLine($"  DataSchema: {cloudEvent.DataSchema}");
    Console.WriteLine($"  DataContentType: {cloudEvent.DataContentType}");
    Console.WriteLine($"  Time: {cloudEvent.Time?.ToUniversalTime():yyyy-MM-dd'T'HH:mm:ss.fff'Z'}");
    Console.WriteLine($"  SpecVersion: {cloudEvent.SpecVersion}");
});

app.Run();