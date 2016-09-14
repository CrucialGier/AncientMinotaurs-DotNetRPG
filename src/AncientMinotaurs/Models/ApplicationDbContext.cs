using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            builder.Entity<Pathway>().HasKey(x => new { x.StartId, x.EndId });
        }
        public DbSet<Item> Items { get; set; }
        public DbSet<Character> Characters { get; set; }
        public DbSet<Loot> Loots { get; set; }
        public DbSet<Monster> Monsters { get; set; }
        public DbSet<Pathway> Pathways { get; set; }
        public DbSet<Room> Rooms { get; set; }
        public DbSet<Treasure> Treasures { get; set; }
    }
}
