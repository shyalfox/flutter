using System.ComponentModel.DataAnnotations;

public class User
{
    [Key]
    public int UserId { get; set; }

    [Required]
    [MaxLength(50)]
    public string Username { get; set; }

    [Required]
    [MaxLength(100)]
    public string PasswordHash { get; set; }

    [Required]
    [MaxLength(20)]
    public string Role { get; set; }
}