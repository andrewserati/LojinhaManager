using LojinhaManagerDomain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace LojinhaManagerORM.Contexts.Configurations
{
    public class CustomerConfiguration : IEntityTypeConfiguration<Customer>
    {
        public void Configure(EntityTypeBuilder<Customer> builder)
        {
            builder.ToTable("customer");

            builder.Property(p => p.Name)
                .HasMaxLength(100);

            builder.Property(p => p.Birthdate)
                .HasColumnType("date")
                .IsRequired(false);
        }
    }
}
