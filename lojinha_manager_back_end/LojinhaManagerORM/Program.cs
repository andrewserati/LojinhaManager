var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

app.Run();

Console.WriteLine("Database is working!");
