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