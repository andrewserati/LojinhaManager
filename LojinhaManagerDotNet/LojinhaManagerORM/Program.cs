using LojinhaManagerORM.Contexts;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddEntityFrameworkNpgsql().AddDbContext<LojinhaManagerPostgresContext>();

var app = builder.Build();

app.Run();
