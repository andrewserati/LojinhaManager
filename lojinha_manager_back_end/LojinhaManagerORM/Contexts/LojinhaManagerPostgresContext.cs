using LojinhaManagerDomain.Models;
using LojinhaManagerORM.Contexts.Configurations;
using Microsoft.EntityFrameworkCore;

namespace LojinhaManagerORM.Contexts
{
    public sealed class LojinhaManagerPostgresContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }

        private readonly IConfiguration Configuration;

        #pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
        public LojinhaManagerPostgresContext(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
            => optionsBuilder.UseNpgsql(Configuration.GetConnectionString("LojinhaManagerPostgresDatabase"), 
                builder => builder.EnableRetryOnFailure(3, TimeSpan.FromSeconds(5), null));

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new CustomerConfiguration());
        }
    }
}
