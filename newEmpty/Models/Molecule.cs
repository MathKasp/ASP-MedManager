using System.ComponentModel.DataAnnotations;

namespace newEmpty.Models;

public class Molecule
{
    [Key]
    public int Moleculeid { get; set; }

    public required string Nom { get; set; }
    
    public List<Medicament> Medicaments {get; set;} = new();

}