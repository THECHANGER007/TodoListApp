using Microsoft.EntityFrameworkCore;
using System.IO;
using TodoListApp.Models;

namespace TodoListApp.Data
{
    public class TodoItemContext : DbContext
    {
        public DbSet<TodoItem> TodoItems { get; set; }

        public TodoItemContext()
        {
            SQLitePCL.Batteries_V2.Init();
            this.Database.EnsureCreated();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "TodoItems.db");
            optionsBuilder.UseSqlite($"Filename={dbPath}");
        }
    }
}