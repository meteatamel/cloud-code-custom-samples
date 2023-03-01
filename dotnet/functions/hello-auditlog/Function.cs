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
using Google.Cloud.Functions.Framework;
using Google.Events.Protobuf.Cloud.Audit.V1;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace HelloAuditLog;

public class Function : ICloudEventFunction<LogEntryData>
{
    public Task HandleAsync(CloudEvent cloudEvent, LogEntryData data, CancellationToken cancellationToken)
    {
        Console.WriteLine("LogEntry information:");
        Console.WriteLine($"  ProtoPayload: {data.ProtoPayload}");
        Console.WriteLine($"    ServiceName: {data.ProtoPayload.ServiceName}");
        Console.WriteLine($"    MethodName: {data.ProtoPayload.MethodName}");
        Console.WriteLine($"    ResourceName: {data.ProtoPayload.ResourceName}");
        Console.WriteLine("CloudEvent information:");
        Console.WriteLine($"  ID: {cloudEvent.Id}");
        Console.WriteLine($"  Source: {cloudEvent.Source}");
        Console.WriteLine($"  Type: {cloudEvent.Type}");
        Console.WriteLine($"  Subject: {cloudEvent.Subject}");
        Console.WriteLine($"  DataSchema: {cloudEvent.DataSchema}");
        Console.WriteLine($"  DataContentType: {cloudEvent.DataContentType}");
        Console.WriteLine($"  Time: {cloudEvent.Time?.ToUniversalTime():yyyy-MM-dd'T'HH:mm:ss.fff'Z'}");
        Console.WriteLine($"  SpecVersion: {cloudEvent.SpecVersion}");

        return Task.CompletedTask;
    }
}