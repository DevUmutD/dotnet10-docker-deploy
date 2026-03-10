var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// 1. GET /health endpoint'i
app.MapGet("/health", () => Results.Ok());

// 2. GET /api/info endpoint'i
app.MapGet("/api/info", () =>
{
    // Ortam değişkenlerini al, yoksa varsayılan değerler ata
    var studentName = Environment.GetEnvironmentVariable("STUDENT_NAME") ?? "Umut Duran";
    var environment = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") ?? "Production";
    var serverTimeUtc = DateTime.UtcNow.ToString("yyyy-MM-ddTHH:mm:ssZ");

    return Results.Json(new
    {
        student = studentName,
        environment = environment,
        serverTimeUtc = serverTimeUtc
    });
});

app.Run();