using System;
using System.ComponentModel.DataAnnotations;
using newEmpty.Models;

namespace newEmpty.ViewModel;

public class AllergieAddViewModel
{
    public Allergie? Allergie { get; set; }
    public List<Medicament>? Medicaments { get; set; }
    public List<int> SelectedMedicamentIds { get; set; } = new List<int>();

}