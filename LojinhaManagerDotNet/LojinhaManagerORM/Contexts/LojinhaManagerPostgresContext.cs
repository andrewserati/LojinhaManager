using LojinhaManagerDomain.Models;
using LojinhaManagerORM.Contexts.Configurations;
using Microsoft.EntityFrameworkCore;

namespace LojinhaManagerORM.Contexts
{
    public class LojinhaManagerPostgresContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }

        protected readonly IConfiguration Configuration;

        #pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
        public LojinhaManagerPostgresContext(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql(Configuration.GetConnectionString("LojinhaManagerPostgresDatabase"));
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new CustomerConfiguration());
        }
    }
}
