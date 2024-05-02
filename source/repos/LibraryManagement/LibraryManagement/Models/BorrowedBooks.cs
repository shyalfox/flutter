using System;
using System.ComponentModel.DataAnnotations;

public class BorrowedBooks
{
    [Key]
    public int BorrowId { get; set; }

    [Required]
    public int StudentId { get; set; }

    [Required]
    public int BookId { get; set; }

    public DateTime BorrowDate { get; set; } = DateTime.Now;

    public DateTime ReturnDate { get; set; }

    public bool Returned { get; set; }

    public double FineAmount { get; set; }
} 
