using System.ComponentModel.DataAnnotations;

public class Student
{
    [Key]
    public int StudentId { get; set; }

    [Required]
    [MaxLength(100)]
    public string StudentName { get; set; }

    [Required]
    [MaxLength(100)]
    public string StudentEmail { get; set; }
}
