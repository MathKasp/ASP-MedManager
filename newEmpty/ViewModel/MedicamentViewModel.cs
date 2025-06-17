using System;
using System.ComponentModel.DataAnnotations;
using newEmpty.Models;

namespace newEmpty.ViewModel;

public class MedicamentViewModel
{
    public Medicament Medicament { get; set; }
    public List<Antecedent>? Antecedents { get; set; }
    public List<Allergie>? Allergies { get; set; }
    public List<Molecule>? Molecules { get; set; }
    public List<int> SelectedAntecedentIds { get; set; } = new List<int>();
    public List<int> SelectedAllergieIds { get; set; } = new List<int>();
    public List<int> SelectedMoleculeIds { get; set; } = new List<int>();
}