using System.ComponentModel.DataAnnotations;

public class Admin
{
    [Key]
    public int AdminId { get; set; }

    [Required]
    [MaxLength(100)]
    public string AdminName { get; set; }

    [Required]
    [MaxLength(100)]
    public string AdminEmail { get; set; }
}
