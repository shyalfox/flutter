using Microsoft.EntityFrameworkCore;

namespace LibraryManagement.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<Admin> Admins { get; set; }
        public DbSet<Books> Books { get; set; }
        public DbSet<BorrowedBooks> BorrowedBooks { get; set; }
    }
}