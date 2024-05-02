using System.ComponentModel.DataAnnotations;

public class Books
{
    [Key]
    public int BookId { get; set; }

    [Required]
    [MaxLength(100)]
    public string BookTitle { get; set; }

    [Required]
    [MaxLength(100)]
    public string Author { get; set; }

    [MaxLength(50)]
    public string Genre { get; set; }

    public bool Available { get; set; }
}
